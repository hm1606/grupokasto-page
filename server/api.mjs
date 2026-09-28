/**
 * API mínima de grupokasto.com: POST /api/contacto
 * Sin dependencias. Nginx sirve el sitio (nuevo o el clon del viejo) y manda /api/ a este proceso (PM2, puerto 4012).
 * La usan el formulario del sitio nuevo (/contacto) y el del clon del sitio viejo (f?p=102:2), que antes enviaba con APEX_MAIL.
 *
 * Variables de entorno (.env junto a ecosystem.config.cjs):
 *   PORT                 Puerto (default 4012)
 *   RESEND_API_KEY       API key de Resend (https://resend.com). Sin ella se usa el respaldo FormSubmit.
 *   CONTACT_TO_EMAIL     A dónde llegan los mensajes (default comunicacion@grupokasto.com, igual que el sitio anterior)
 *   CONTACT_BCC_EMAIL    Copia oculta opcional (el sitio anterior copiaba a sahara.merin@grupokasto.com)
 *   CONTACT_FROM_EMAIL   Remitente verificado en Resend, p. ej. "grupokasto.com <web@grupokasto.com>"
 */
import http from 'node:http';

const PORT = Number(process.env.PORT || 4012);
const TO = process.env.CONTACT_TO_EMAIL || 'comunicacion@grupokasto.com';
const BCC = process.env.CONTACT_BCC_EMAIL || '';
const FROM = process.env.CONTACT_FROM_EMAIL || 'grupokasto.com <onboarding@resend.dev>';
const RESEND_KEY = process.env.RESEND_API_KEY || '';
const MAX_BODY = 20_000;

// Límite simple por IP: 5 envíos cada 10 minutos
const hits = new Map();
function limited(ip) {
  const now = Date.now();
  const list = (hits.get(ip) || []).filter((t) => now - t < 10 * 60_000);
  list.push(now);
  hits.set(ip, list);
  if (hits.size > 5000) hits.clear();
  return list.length > 5;
}

const esc = (v) =>
  String(v ?? '')
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
const clean = (v, max) => (typeof v === 'string' ? v.trim().slice(0, max) : '');
const isEmail = (v) => /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(v);

function send(res, status, body) {
  res.writeHead(status, { 'Content-Type': 'application/json; charset=utf-8', 'Cache-Control': 'no-store' });
  res.end(JSON.stringify(body));
}

function readJson(req) {
  return new Promise((resolve, reject) => {
    let size = 0;
    const chunks = [];
    req.on('data', (c) => {
      size += c.length;
      if (size > MAX_BODY) {
        reject(new Error('too_large'));
        req.destroy();
      } else chunks.push(c);
    });
    req.on('end', () => {
      try {
        resolve(JSON.parse(Buffer.concat(chunks).toString('utf8') || '{}'));
      } catch {
        reject(new Error('bad_json'));
      }
    });
    req.on('error', reject);
  });
}

async function resend(payload) {
  const r = await fetch('https://api.resend.com/emails', {
    method: 'POST',
    headers: { Authorization: `Bearer ${RESEND_KEY}`, 'Content-Type': 'application/json' },
    body: JSON.stringify(payload),
  });
  if (!r.ok) throw new Error(`Resend ${r.status}: ${await r.text()}`);
}

async function formsubmit(d, subject) {
  const r = await fetch(`https://formsubmit.co/ajax/${encodeURIComponent(TO)}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
    body: JSON.stringify({ ...d, _subject: subject, _captcha: 'false', _template: 'table', ...(BCC ? { _cc: BCC } : {}) }),
  });
  if (!r.ok) throw new Error(`FormSubmit ${r.status}: ${await r.text()}`);
}

async function handleContact(req, res) {
  const ip = String(req.headers['x-real-ip'] || req.socket.remoteAddress || '');
  let body;
  try {
    body = await readJson(req);
  } catch {
    return send(res, 400, { ok: false, message: 'Solicitud inválida.' });
  }

  // Trampa para bots: si llenaron el campo oculto, fingimos éxito
  if (clean(body.website, 200)) return send(res, 200, { ok: true });

  const d = {
    kind: body.kind === 'queja' ? 'queja' : 'contacto',
    name: clean(body.name, 120),
    email: clean(body.email, 160),
    phone: clean(body.phone, 40),
    company: clean(body.company, 160),
    unit: clean(body.unit, 160),
    message: clean(body.message, 5000),
    page: clean(body.page, 200),
    privacyVersion: clean(body.privacyVersion, 30),
  };

  if (body.privacy !== true) return send(res, 400, { ok: false, message: 'Necesitas aceptar el aviso de privacidad.' });
  if (!d.name || !isEmail(d.email) || !d.message) {
    return send(res, 400, { ok: false, message: 'Faltan datos: nombre, correo válido y mensaje.' });
  }
  if (limited(ip)) return send(res, 429, { ok: false, message: 'Demasiados envíos. Intenta en unos minutos.' });

  const subject =
    d.kind === 'queja'
      ? `Queja o sugerencia desde grupokasto.com — ${d.name}`
      : `Nueva consulta desde grupokasto.com — ${d.unit || 'General'} — ${d.name}`;
  const rows = [
    ['Nombre', d.name],
    ['Correo', d.email],
    ['Teléfono', d.phone || '—'],
    ['Empresa', d.company || '—'],
    ['Tema / unidad de negocio', d.unit || '—'],
    ['Página', d.page || '—'],
    ['Aviso de privacidad', `Aceptado (versión ${d.privacyVersion || '—'}) · ${new Date().toISOString()}`],
  ];
  const text = `Se recibió un nuevo mensaje:\n\n${rows.map(([k, v]) => `${k}: ${v}`).join('\n')}\n\nMensaje:\n${d.message}\n\nEnviado desde grupokasto.com`;
  // Mismos colores del correo que mandaba el sitio anterior (amarillo #eddd5e y verde #5b8c51)
  const html = `
  <div style="width:100%;background-color:#eceeef;padding:20px 0;font-family:Arial,sans-serif;">
    <table align="center" cellpadding="0" cellspacing="0" style="max-width:600px;width:100%;background-color:#ffffff;border-radius:12px;overflow:hidden;">
      <tr><td style="background-color:#eddd5e;padding:20px;text-align:center;">
        <h2 style="color:#5b8c51;margin:0;">${d.kind === 'queja' ? 'Queja o sugerencia' : 'Nueva consulta'} desde grupokasto.com</h2>
      </td></tr>
      <tr><td style="padding:20px;">
        <table cellpadding="6" cellspacing="0" width="100%" style="color:#404a3d;">
          ${rows.map(([k, v]) => `<tr><td style="font-weight:bold;width:34%;vertical-align:top;">${esc(k)}:</td><td>${esc(v)}</td></tr>`).join('')}
          <tr><td style="font-weight:bold;vertical-align:top;">Mensaje:</td>
            <td style="background-color:#f9f9f9;padding:10px;border-left:4px solid #5b8c51;white-space:pre-wrap;">${esc(d.message)}</td></tr>
        </table>
        <hr style="margin:30px 0;border:none;border-top:1px solid #ccc;">
        <p style="font-size:12px;color:#888888;text-align:center;">Este correo fue generado automáticamente desde <strong>grupokasto.com</strong></p>
      </td></tr>
    </table>
  </div>`;

  try {
    if (RESEND_KEY) {
      await resend({ from: FROM, to: [TO], ...(BCC ? { bcc: [BCC] } : {}), reply_to: d.email, subject, text, html });
    } else {
      await formsubmit({ nombre: d.name, correo: d.email, telefono: d.phone, empresa: d.company, tema: d.unit, mensaje: d.message, pagina: d.page }, subject);
    }
    console.log(`[contacto] ${new Date().toISOString()} ${d.kind} ${d.email} ${d.unit}`);
    return send(res, 200, { ok: true });
  } catch (e) {
    console.error('[contacto] error', e.message);
    return send(res, 502, { ok: false, message: 'No se pudo enviar el mensaje. Intenta de nuevo.' });
  }
}

const server = http.createServer((req, res) => {
  const url = new URL(req.url || '/', 'http://localhost');
  if (url.pathname === '/api/health') return send(res, 200, { ok: true });
  if (url.pathname === '/api/contacto' && req.method === 'POST') {
    handleContact(req, res).catch((e) => {
      console.error(e);
      send(res, 500, { ok: false });
    });
    return;
  }
  send(res, 404, { ok: false });
});

server.listen(PORT, '127.0.0.1', () => {
  console.log(`API escuchando en http://127.0.0.1:${PORT} (${RESEND_KEY ? 'Resend' : 'FormSubmit'} → ${TO})`);
});
