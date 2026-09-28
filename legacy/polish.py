"""
Mejoras del sitio anterior que van más allá de "quitar APEX": SEO, íconos, Contacto rediseñado, visor de fotos,
arreglos visuales y de enlaces. Lo usa legacy/build.py (función polish()).

Regla: el sitio se sigue viendo como el de siempre (misma plantilla, colores y textos institucionales), pero lo que
estaba roto o se veía mal se arregla.
"""
import html as htmllib
import json
import os
import re

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.normpath(os.path.join(HERE, '..'))
DIST = os.path.join(ROOT, 'dist')  # build del sitio nuevo: mismas rutas, de ahí salen descripciones e imágenes para compartir
SITE_URL = 'https://www.grupokasto.com'

# ---------------------------------------------------------------------------------------------------------------
# Oficinas (las mismas de src/data/site.ts) y temas del formulario (los del sitio anterior)
# ---------------------------------------------------------------------------------------------------------------
OFFICES = [
    {'name': 'Oficinas corporativas', 'company': 'Grupo Kasto', 'lines': ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
     'email': 'contacto@grupokasto.com', 'phone': '352 526 1939'},
    {'name': 'División Granos', 'company': 'Kasavi Comercial S.A. de C.V.', 'lines': ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
     'email': 'contacto@grupokasto.com', 'phone': '352 526 1766'},
    {'name': 'División Molinos', 'company': 'Grupo Kasto Molinos S.A. de C.V.', 'lines': ['Calle 3 No. 690, Colón Industrial', 'Guadalajara, Jal.', 'C.P. 44940'],
     'email': 'contacto@grupokasto.com', 'phone': '33 3145 2460'},
    {'name': 'División Pecuaria', 'company': 'Folap, S.A. de C.V.', 'lines': ['Lázaro Cárdenas 1109, Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'],
     'email': 'folapsa@grupokasto.com', 'phone': '352 522 0508'},
]
TOPICS = ['Ventas y atención al cliente', 'División Granos', 'División Molinos de trigo', 'División Pecuaria', 'División Servicios',
          'Invernaderos', 'Panadería y bistró', 'Productos de consumo', 'Promotora de inversión', 'Proveedores y alianzas',
          'Bolsa de trabajo', 'Medios y relaciones públicas', 'Soporte técnico', 'Quejas y sugerencias', 'Otros asuntos generales']


def tel(phone):
    return 'tel:+52' + re.sub(r'\D', '', phone)[-10:]


def maps_query(o):
    return htmllib.escape(', '.join(o['lines'] + ['México']).replace(' No. ', ' '), quote=True)


ICON = {
    'mail': '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7"><rect x="3" y="5" width="18" height="14" rx="2"/><path d="m3 7 9 6 9-6"/></svg>',
    'phone': '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7"><path d="M5 4h4l2 5-2.5 1.5a11 11 0 0 0 5 5L15 13l5 2v4a2 2 0 0 1-2 2A16 16 0 0 1 3 6a2 2 0 0 1 2-2"/></svg>',
    'pin': '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.7"><path d="M12 21s-7-6.2-7-11.5A7 7 0 0 1 19 9.5C19 14.8 12 21 12 21Z"/><circle cx="12" cy="9.5" r="2.5"/></svg>',
    'arrow': '<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M3 8h10m-4-4 4 4-4 4"/></svg>',
}


def contact_html():
    cards = []
    for k, o in enumerate(OFFICES):
        q = maps_query(o)
        cards.append(f'''
          <article class="gk-office">
            <p class="gk-office__tag">{o['name']}</p>
            <h3 class="gk-office__name">{o['company']}</h3>
            <p class="gk-office__addr">{'<br>'.join(o['lines'])}</p>
            <ul class="gk-office__list">
              <li>{ICON['mail']}<a href="mailto:{o['email']}">{o['email']}</a></li>
              <li>{ICON['phone']}<a href="{tel(o['phone'])}">{o['phone']}</a></li>
            </ul>
            <div class="gk-office__actions">
              <button type="button" class="gk-office__map" data-map="{k}">{ICON['pin']}Ver en el mapa</button>
              <a class="gk-office__go" href="https://www.google.com/maps/dir/?api=1&amp;destination={q}" target="_blank" rel="noopener">Cómo llegar {ICON['arrow']}</a>
            </div>
          </article>''')
    options = '\n'.join(f'<option>{htmllib.escape(t)}</option>' for t in TOPICS)
    tabs = '\n'.join(
        f'<button type="button" role="tab" class="gk-map__tab{" is-on" if k == 0 else ""}" data-map="{k}" data-q="{maps_query(o)}" aria-selected="{"true" if k == 0 else "false"}">{o["name"]}</button>'
        for k, o in enumerate(OFFICES))
    return f'''
<section class="gk-contact">
  <div class="container">
    <div class="block-title text-center">
      <p>Estamos para servirte</p>
      <h3>Nuestras oficinas</h3>
      <div class="leaf"><img src="/static/assets/images/resources/leaf.png" alt=""></div>
    </div>
    <div class="gk-offices">{''.join(cards)}
    </div>

    <div class="gk-contact__grid">
      <div class="gk-form-card">
        <div class="block-title text-left">
          <p>Contáctanos</p>
          <h3>Escribe tu mensaje</h3>
          <div class="leaf"><img src="/static/assets/images/resources/leaf.png" alt=""></div>
        </div>
        <form id="gk-contact-form" class="gk-form" novalidate>
          <div class="gk-field"><label for="P2_NOMBRE">Nombre completo</label><input id="P2_NOMBRE" name="name" type="text" autocomplete="name" required maxlength="120" placeholder="Tu nombre"></div>
          <div class="gk-field"><label for="P2_EMAIL">Correo electrónico</label><input id="P2_EMAIL" name="email" type="email" autocomplete="email" required maxlength="160" placeholder="tu@correo.com"></div>
          <div class="gk-field"><label for="P2_TELEFONO">Teléfono <span>(opcional)</span></label><input id="P2_TELEFONO" name="phone" type="tel" autocomplete="tel" maxlength="40" placeholder="Ej. 33 1234 5678"></div>
          <div class="gk-field"><label for="P2_UNIDAD_NEGOCIO">¿Sobre qué tema?</label>
            <select id="P2_UNIDAD_NEGOCIO" name="unit" required><option value="" disabled selected>Selecciona un tema</option>{options}</select></div>
          <div class="gk-field gk-field--full"><label for="P2_MENSAJE">Mensaje</label><textarea id="P2_MENSAJE" name="message" rows="5" required maxlength="5000" placeholder="Cuéntanos en qué podemos ayudarte"></textarea></div>
          <input type="text" name="website" tabindex="-1" autocomplete="off" class="gk-hp" aria-hidden="true">
          <label class="gk-check gk-field--full"><input type="checkbox" id="gk-privacy" required> <span>He leído y acepto el <a href="/avisos-de-privacidad/" target="_blank">aviso de privacidad</a>.</span></label>
          <div class="gk-form__foot gk-field--full">
            <p class="gk-form__status" role="status" aria-live="polite"></p>
            <button type="submit" class="thm-btn gk-form__send">Enviar mensaje {ICON['arrow']}</button>
          </div>
        </form>
      </div>
      <aside class="gk-help">
        <div class="gk-help__img"><img src="/static/assets/images/Contacto_imagen1.jpg" alt="Espigas de trigo al atardecer"></div>
        <div class="gk-help__body">
          <div class="block-title text-left">
            <p>Pónganse en contacto con nosotros</p>
            <h3>¿Tiene preguntas?</h3>
            <div class="leaf"><img src="/static/assets/images/resources/leaf.png" alt=""></div>
          </div>
          <p>A través de las empresas que conforman nuestras unidades de negocio, podemos ofrecer a nuestros clientes una variedad de productos y servicios para satisfacer sus necesidades.</p>
          <a href="{tel(OFFICES[0]['phone'])}" class="gk-help__phone">{ICON['phone']}<span><small>Llámanos</small>{OFFICES[0]['phone']}</span></a>
          <a href="mailto:{OFFICES[0]['email']}" class="gk-help__phone">{ICON['mail']}<span><small>Escríbenos</small>{OFFICES[0]['email']}</span></a>
        </div>
      </aside>
    </div>
  </div>

  <div class="gk-map" id="mapa">
    <div class="container"><div class="gk-map__tabs" role="tablist" aria-label="Oficinas">{tabs}</div></div>
    <iframe class="gk-map__frame" title="Mapa: {OFFICES[0]['name']}" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
      src="https://maps.google.com/maps?q={maps_query(OFFICES[0])}&amp;z=15&amp;output=embed"></iframe>
  </div>
</section>
'''


CONTACT_JS = '''
<script>
(function () {
  /* Mapa: pestañas y botones "Ver en el mapa" de cada oficina */
  var frame = document.querySelector('.gk-map__frame'), tabs = [].slice.call(document.querySelectorAll('.gk-map__tab'));
  function showMap(k, scroll) {
    var t = tabs[k]; if (!t) return;
    tabs.forEach(function (x) { x.classList.toggle('is-on', x === t); x.setAttribute('aria-selected', x === t); });
    frame.src = 'https://maps.google.com/maps?q=' + encodeURIComponent(t.dataset.q.replace(/&amp;/g, '&')) + '&z=15&output=embed';
    frame.title = 'Mapa: ' + t.textContent;
    if (scroll) document.getElementById('mapa').scrollIntoView({ behavior: 'smooth', block: 'center' });
  }
  tabs.forEach(function (t, k) { t.addEventListener('click', function () { showMap(k); }); });
  [].forEach.call(document.querySelectorAll('.gk-office__map'), function (b) {
    b.addEventListener('click', function () { showMap(+b.dataset.map, true); });
  });

  /* Formulario: manda el mensaje a la API del sitio (server/api.mjs -> comunicacion@grupokasto.com).
     Si la API no responde, abre el correo del visitante con el mensaje listo. */
  var form = document.getElementById('gk-contact-form'); if (!form) return;
  var status = form.querySelector('.gk-form__status'), btn = form.querySelector('.gk-form__send');
  var say = function (msg, kind) { status.textContent = msg; status.className = 'gk-form__status' + (kind ? ' is-' + kind : ''); };
  form.addEventListener('submit', function (e) {
    e.preventDefault();
    [].forEach.call(form.querySelectorAll('.is-invalid'), function (el) { el.classList.remove('is-invalid'); });
    var bad = [].filter.call(form.querySelectorAll('[required]'), function (el) { return !el.checkValidity(); });
    if (bad.length) {
      bad.forEach(function (el) { (el.type === 'checkbox' ? el.closest('.gk-check') : el).classList.add('is-invalid'); });
      bad[0].focus();
      return say(bad[0].type === 'checkbox' ? 'Para enviar, acepta el aviso de privacidad.' : 'Revisa los campos marcados.', 'error');
    }
    var f = form.elements, sel = f.unit;
    var data = { kind: sel.value === 'Quejas y sugerencias' ? 'queja' : 'contacto', name: f.name.value.trim(), email: f.email.value.trim(),
                 phone: f.phone.value.trim(), unit: sel.value, message: f.message.value.trim(), website: f.website.value,
                 page: location.pathname, privacy: true, privacyVersion: 'sitio-anterior' };
    btn.disabled = true; say('Enviando…');
    fetch('/api/contacto', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(data) })
      .then(function (r) { return r.json().then(function (j) { if (!r.ok || !j.ok) throw j; }); })
      .then(function () { form.reset(); say('¡Gracias! Recibimos tu mensaje y te responderemos pronto.', 'ok'); })
      .catch(function (j) {
        if (j && j.ok === false && j.message) return say(j.message, 'error');
        var body = 'Nombre: ' + data.name + '\\nCorreo: ' + data.email + '\\nTeléfono: ' + data.phone + '\\nTema: ' + data.unit +
                   '\\n\\n' + data.message + '\\n\\nEnviado desde grupokasto.com';
        say('No pudimos enviarlo desde aquí; abrimos tu correo con el mensaje listo.', 'error');
        location.href = 'mailto:comunicacion@grupokasto.com?subject=' + encodeURIComponent('Nueva consulta desde grupokasto.com') + '&body=' + encodeURIComponent(body);
      })
      .then(function () { btn.disabled = false; });
  });
})();
</script>
'''

# ---------------------------------------------------------------------------------------------------------------
# Estilos que se agregan a todas las páginas (paleta y tipografías de la plantilla)
# ---------------------------------------------------------------------------------------------------------------
CSS = '''
<style id="gk-polish">
:root{--gk-green:#5b8c51;--gk-yellow:#eddd5e;--gk-olive:#404a3d;--gk-cream:#f5f0e9}
/* Títulos principales: ahora son <h1> (SEO) y se ven igual que antes */
.page-header h1{color:#fff;font-size:50px;line-height:60px;font-weight:700;margin:0;text-transform:uppercase;padding-bottom:56px;font-family:"Barlow Condensed",cursive}
@media (max-width:767px){.page-header h1{font-size:38px;line-height:46px}}
.banner-carousel .content-box .gk-h1{position:relative;display:block;margin:100px 0 30px;font-family:"Barlow Condensed",cursive;font-size:108px;line-height:149px;color:#fff;font-weight:700;opacity:0;text-transform:uppercase;transform:translateY(80px)}
.banner-carousel .active .content-box .gk-h1{opacity:1;transform:none;transition:1000ms 1300ms}
@media only screen and (min-width:992px) and (max-width:1199px){.banner-carousel .content-box .gk-h1{margin:14px 0 33px;font-size:100px;line-height:110px}}
@media only screen and (min-width:768px) and (max-width:991px){.banner-carousel .content-box .gk-h1{margin:14px 0 33px;font-size:50px;line-height:60px}}
@media only screen and (max-width:767px){.banner-carousel .content-box .gk-h1{margin:14px 0 33px;font-size:40px;line-height:50px}}
/* Carrusel de instalaciones (divisiones): todas las fotos del mismo alto, sin huecos, y aire antes del pie */
.recent_project_three{padding-bottom:110px}
.recent_project_three .gallery_two_image img{width:100%;height:clamp(280px,30vw,440px);object-fit:cover}
/* Servicios: el bloque final ya no queda pegado al pie de página */
.service_detail > .container{margin-bottom:0!important;padding-bottom:110px!important}
/* Noticias: el título de la nota es el <h1> y se ve como antes */
.news_detail_content h1.gk-news-title{text-transform:unset;color:var(--thm-black);font-size:34px;font-weight:600;margin:0 0 35px;font-family:var(--thm-font);line-height:1.15}
@media (max-width:767px){.news_detail_content h1.gk-news-title{font-size:28px}}
/* Noticias: fotos en cuadrícula pareja, se amplían con el visor */
.news_detail_left [id$="_image_flexbox"]{display:grid!important;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:12px;margin:18px 0}
.news_detail_left [id$="_image_flexbox"] img{width:100%!important;height:260px!important;object-fit:cover;margin:0!important;border-radius:10px!important;cursor:zoom-in;transition:transform .6s cubic-bezier(.2,.7,.2,1),box-shadow .6s}
.news_detail_left [id$="_image_flexbox"] img:hover{transform:translateY(-3px);box-shadow:0 14px 30px rgba(38,43,36,.18)}
.news_detail_image_box img{cursor:zoom-in}
.gk-tag{color:#878986;margin-right:4px}
/* Avisos de privacidad: la empresa elegida se marca */
a.gk-aviso-on{color:var(--gk-green)!important;font-weight:600}
/* Insignia ESR (certificaciones) */
.gk-badge{display:flex;align-items:center;gap:14px;margin:30px auto 0;max-width:360px;padding:16px 22px;border-radius:14px;background:#fff;box-shadow:0 12px 30px rgba(38,43,36,.08);border:1px solid rgba(64,74,61,.08)}
.gk-badge svg{flex:none;width:46px;height:46px;color:var(--gk-green)}
.gk-badge b{display:block;font-family:"Barlow Condensed",sans-serif;font-size:22px;letter-spacing:.04em;color:var(--gk-olive);text-transform:uppercase;line-height:1.1}
.gk-badge span{display:block;margin-top:4px;font-size:14px;line-height:1.4;color:#6c706a}
/* Logos de marcas: no son enlaces */
a:not([href]){cursor:default}
</style>
'''

CONTACT_CSS = '''
<style id="gk-contact-css">
.gk-contact{padding:110px 0 0;background:linear-gradient(#fff 0,#fff 520px,var(--gk-cream) 520px)}
.gk-offices{display:grid;grid-template-columns:repeat(4,1fr);gap:22px;margin-top:10px}
.gk-office{display:flex;flex-direction:column;padding:30px 28px;border-radius:18px;background:#fff;box-shadow:0 18px 40px rgba(38,43,36,.08);border:1px solid rgba(64,74,61,.07);transition:transform .5s cubic-bezier(.2,.7,.2,1),box-shadow .5s}
.gk-office:hover{transform:translateY(-4px);box-shadow:0 26px 50px rgba(38,43,36,.13)}
.gk-office__tag{margin:0;font-family:"Barlow Condensed",sans-serif;font-weight:600;font-size:14px;letter-spacing:.18em;text-transform:uppercase;color:var(--gk-green)}
.gk-office__name{margin:8px 0 0;font-size:24px;line-height:1.15;color:var(--gk-olive);text-transform:none}
.gk-office__addr{margin:12px 0 0;font-size:15px;line-height:1.7;color:#6c706a}
.gk-office__list{list-style:none;margin:18px 0 0;padding:16px 0 0;border-top:1px solid rgba(64,74,61,.1)}
.gk-office__list li{display:flex;align-items:center;gap:10px;font-size:15px;margin:6px 0}
.gk-office__list svg{width:17px;height:17px;flex:none;color:var(--gk-green)}
.gk-office__list a{color:var(--gk-olive);word-break:break-word}
.gk-office__list a:hover{color:var(--gk-green)}
.gk-office__actions{display:flex;flex-wrap:wrap;gap:8px;margin-top:auto;padding-top:20px}
.gk-office__map,.gk-office__go{display:inline-flex;align-items:center;gap:7px;padding:9px 14px;border-radius:999px;font-size:13px;font-weight:600;line-height:1;transition:background .3s,color .3s,border-color .3s}
.gk-office__map{border:1px solid rgba(64,74,61,.18);background:none;color:var(--gk-olive);cursor:pointer}
.gk-office__map:hover{border-color:var(--gk-green);color:var(--gk-green)}
.gk-office__go{background:var(--gk-olive);color:#fff!important}
.gk-office__go:hover{background:var(--gk-green)}
.gk-office__map svg,.gk-office__go svg{width:14px;height:14px}
.gk-contact__grid{display:grid;grid-template-columns:1.45fr 1fr;gap:30px;margin-top:90px;align-items:stretch}
.gk-form-card{padding:50px;border-radius:22px;background:var(--gk-green);color:#fff;box-shadow:0 30px 60px rgba(64,74,61,.18)}
.gk-form-card .block-title p{color:var(--gk-yellow)}
.gk-form-card .block-title h3{color:#fff}
.gk-form{display:grid;grid-template-columns:1fr 1fr;gap:18px 20px;margin-top:34px}
.gk-field{display:flex;flex-direction:column;gap:7px}
.gk-field--full{grid-column:1/-1}
.gk-field label{margin:0;font-size:14px;font-weight:600;letter-spacing:.02em;color:rgba(255,255,255,.9)}
.gk-field label span{font-weight:400;opacity:.7}
.gk-field input,.gk-field select,.gk-field textarea{width:100%;padding:14px 16px;border-radius:12px;border:1.5px solid transparent;background:#fff;color:var(--gk-olive);font-size:16px;outline:none;transition:border-color .25s,box-shadow .25s;font-family:inherit}
.gk-field select{appearance:none;-webkit-appearance:none;padding-right:42px;background:#fff url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='none' stroke='%23404a3d' stroke-width='1.8'%3E%3Cpath d='m4 6 4 4 4-4'/%3E%3C/svg%3E") no-repeat right 16px center/14px}
.gk-field textarea{resize:vertical;min-height:130px}
.gk-field input:focus,.gk-field select:focus,.gk-field textarea:focus{border-color:var(--gk-yellow);box-shadow:0 0 0 4px rgba(237,221,94,.3)}
.gk-field .is-invalid,.gk-field input.is-invalid,.gk-field select.is-invalid,.gk-field textarea.is-invalid{border-color:#f3b7a8;box-shadow:0 0 0 4px rgba(243,183,168,.35)}
.gk-hp{position:absolute!important;left:-9999px!important;width:1px;height:1px;opacity:0}
.gk-check{display:flex;align-items:flex-start;gap:10px;margin:0;font-size:14px;color:rgba(255,255,255,.88);cursor:pointer}
.gk-check input{margin-top:3px;width:18px;height:18px;accent-color:var(--gk-yellow);flex:none}
.gk-check a{color:var(--gk-yellow);text-decoration:underline}
.gk-check.is-invalid{color:#ffd9cf}
.gk-form__foot{display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;margin-top:4px}
.gk-form__status{margin:0;font-size:15px;min-height:1.4em;color:#fff}
.gk-form__status.is-ok{color:var(--gk-yellow);font-weight:600}
.gk-form__status.is-error{color:#ffe1d8}
.gk-form__send{display:inline-flex!important;align-items:center;gap:10px;border:none;cursor:pointer}
.gk-form__send svg{width:15px;height:15px}
.gk-form__send[disabled]{opacity:.6;cursor:wait}
.gk-help{display:flex;flex-direction:column;border-radius:22px;overflow:hidden;background:#fff;box-shadow:0 18px 40px rgba(38,43,36,.08)}
.gk-help__img img{width:100%;height:240px;object-fit:cover;display:block}
.gk-help__body{padding:36px 38px 40px}
.gk-help__body > p{margin:18px 0 22px;color:#6c706a;line-height:1.8}
.gk-help__phone{display:flex;align-items:center;gap:14px;padding:14px 0;border-top:1px solid rgba(64,74,61,.1);color:var(--gk-olive)!important}
.gk-help__phone svg{width:40px;height:40px;padding:10px;border-radius:50%;background:rgba(91,140,81,.12);color:var(--gk-green);flex:none;transition:background .3s,color .3s}
.gk-help__phone:hover svg{background:var(--gk-green);color:#fff}
.gk-help__phone span{display:flex;flex-direction:column;font-size:18px;font-weight:600;word-break:break-word}
.gk-help__phone small{font-size:12px;font-weight:600;letter-spacing:.16em;text-transform:uppercase;color:var(--gk-green)}
.gk-map{margin-top:100px;background:var(--gk-olive);padding-top:26px}
.gk-map__tabs{display:flex;flex-wrap:wrap;gap:8px;padding-bottom:22px}
.gk-map__tab{padding:10px 18px;border-radius:999px;border:1px solid rgba(245,240,233,.25);background:none;color:var(--gk-cream);font-family:"Barlow Condensed",sans-serif;font-size:16px;font-weight:600;letter-spacing:.08em;text-transform:uppercase;cursor:pointer;transition:background .3s,color .3s,border-color .3s}
.gk-map__tab:hover{border-color:var(--gk-yellow);color:var(--gk-yellow)}
.gk-map__tab.is-on{background:var(--gk-yellow);border-color:var(--gk-yellow);color:var(--gk-olive)}
.gk-map__frame{display:block;width:100%;height:460px;border:0;filter:saturate(.85)}
@media (max-width:1199px){.gk-offices{grid-template-columns:repeat(2,1fr)}.gk-contact__grid{grid-template-columns:1fr}}
@media (max-width:767px){
  .gk-contact{padding-top:70px;background:linear-gradient(#fff 0,#fff 900px,var(--gk-cream) 900px)}
  .gk-offices{grid-template-columns:1fr}
  .gk-form-card{padding:34px 22px}
  .gk-form{grid-template-columns:1fr}
  .gk-contact__grid{margin-top:60px}
  .gk-help__body{padding:28px 24px 30px}
  .gk-map{margin-top:70px}
  .gk-map__tabs{flex-wrap:nowrap;overflow-x:auto;scrollbar-width:none}
  .gk-map__tab{flex:none}
  .gk-map__frame{height:360px}
}
</style>
'''

ESR_BADGE = '''<div class="gk-badge">
  <svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="2"><circle cx="24" cy="24" r="21"/><path d="M24 34V20m0 0c0-5 3.5-8.5 9-8.5 0 5.5-3.5 9-9 8.5Zm0 6c0-4.5-3-7.5-7.8-7.5 0 5 3 7.8 7.8 7.5Z"/></svg>
  <p style="margin:0"><b>Distintivo ESR</b><span>Empresa Socialmente Responsable · División Invernaderos</span></p>
</div>'''

# ---------------------------------------------------------------------------------------------------------------
# Visor de fotos (galería y fotos de las noticias)
# ---------------------------------------------------------------------------------------------------------------
LIGHTBOX = """
<style>
.gk-lb{position:fixed;inset:0;z-index:100000;display:flex;flex-direction:column;background:rgba(38,43,36,.95);
  -webkit-backdrop-filter:blur(10px);backdrop-filter:blur(10px);color:#f5f0e9;opacity:0;visibility:hidden;
  transition:opacity .35s ease,visibility .35s;font-family:'Barlow',sans-serif}
.gk-lb.is-open{opacity:1;visibility:visible}
.gk-lb__bar{display:flex;align-items:center;justify-content:space-between;padding:18px 24px}
.gk-lb__count{margin:0;font-family:'Barlow Condensed',sans-serif;font-weight:600;letter-spacing:.16em;font-size:15px;color:#eddd5e}
.gk-lb__count span{color:rgba(245,240,233,.45)}
.gk-lb__btn{display:grid;place-items:center;width:48px;height:48px;border-radius:50%;border:1px solid rgba(245,240,233,.2);
  background:rgba(255,255,255,.06);color:#f5f0e9;cursor:pointer;transition:background .3s,color .3s,border-color .3s,opacity .3s}
.gk-lb__btn:hover{background:#eddd5e;border-color:#eddd5e;color:#404a3d}
.gk-lb__btn svg{width:18px;height:18px}
.gk-lb__btn[disabled]{opacity:0;pointer-events:none}
.gk-lb__stage{position:relative;flex:1;min-height:0;display:flex;align-items:center;justify-content:center;padding:0 88px;touch-action:pan-y}
.gk-lb__img{max-width:min(100%,1600px);max-height:100%;border-radius:14px;box-shadow:0 30px 80px rgba(0,0,0,.45);
  -webkit-user-select:none;user-select:none;-webkit-user-drag:none;transition:opacity .45s ease,transform .6s cubic-bezier(.2,.7,.2,1)}
.gk-lb__img.is-out{opacity:0;transform:translateX(calc(var(--dir,1) * 40px)) scale(.98)}
.gk-lb__prev,.gk-lb__next{position:absolute;top:50%;transform:translateY(-50%)}
.gk-lb__prev{left:22px}.gk-lb__next{right:22px}
.gk-lb__prev svg{transform:rotate(180deg)}
.gk-lb__spin{position:absolute;width:38px;height:38px;border-radius:50%;border:2px solid rgba(237,221,94,.25);border-top-color:#eddd5e;
  animation:gk-spin .8s linear infinite;opacity:0;transition:opacity .2s}
.gk-lb.is-loading .gk-lb__spin{opacity:1}
@keyframes gk-spin{to{transform:rotate(360deg)}}
.gk-lb__thumbs{display:flex;gap:10px;justify-content:center;padding:18px 24px 24px;overflow-x:auto;scrollbar-width:none}
.gk-lb__thumb{flex:0 0 auto;width:84px;height:60px;border-radius:8px;overflow:hidden;border:0;padding:0;cursor:pointer;
  opacity:.45;outline:2px solid transparent;outline-offset:2px;transition:opacity .3s,outline-color .3s;background:#2f372d}
.gk-lb__thumb img{width:100%;height:100%;object-fit:cover;display:block}
.gk-lb__thumb:hover{opacity:.85}
.gk-lb__thumb.is-on{opacity:1;outline-color:#eddd5e}
@media (max-width:767px){
  .gk-lb__stage{padding:0 12px}
  .gk-lb__prev,.gk-lb__next{top:auto;bottom:-6px;transform:none;width:44px;height:44px}
  .gk-lb__prev{left:16px}.gk-lb__next{right:16px}
  .gk-lb__thumbs{justify-content:flex-start;padding-top:64px}
  .gk-lb__thumb{width:64px;height:46px}
}
.gallery_two_single{border-radius:12px;overflow:hidden}
.gallery_two_image img{transition:transform 1.1s cubic-bezier(.2,.7,.2,1)!important}
.gallery_two_single:hover .gallery_two_image img{transform:scale(1.05)}
.gallery_two_hover_box:before{background-color:rgba(64,74,61,.55)!important}
</style>
<script>
(function () {
  /* Qué se puede ampliar: los "+" de la galería y las fotos de cada noticia */
  var items = [];
  [].forEach.call(document.querySelectorAll('a.img-popup'), function (a) {
    var box = a.closest('.gallery_two_image') || a.parentNode, t = box && box.querySelector('img');
    items.push({ el: a, src: a.getAttribute('href').trim(), thumb: t ? t.getAttribute('src') : a.getAttribute('href').trim() });
  });
  [].forEach.call(document.querySelectorAll('.news_detail_image_box > img, .news_detail_left [id$="_image_flexbox"] img'), function (im) {
    items.push({ el: im, src: im.getAttribute('src'), thumb: im.getAttribute('src') });
  });
  if (!items.length) return;
  var arrow = '<svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M3 8h10m-4-4 4 4-4 4"/></svg>';
  var lb = document.createElement('div');
  lb.className = 'gk-lb';
  lb.setAttribute('role', 'dialog');
  lb.setAttribute('aria-modal', 'true');
  lb.setAttribute('aria-label', 'Fotos');
  lb.innerHTML =
    '<div class="gk-lb__bar"><p class="gk-lb__count"></p>' +
    '<button type="button" class="gk-lb__btn gk-lb__close" aria-label="Cerrar"><svg viewBox="0 0 16 16" fill="none" stroke="currentColor" stroke-width="1.8"><path d="m3 3 10 10M13 3 3 13"/></svg></button></div>' +
    '<div class="gk-lb__stage"><span class="gk-lb__spin"></span><img class="gk-lb__img" alt="" draggable="false">' +
    '<button type="button" class="gk-lb__btn gk-lb__prev" aria-label="Foto anterior">' + arrow + '</button>' +
    '<button type="button" class="gk-lb__btn gk-lb__next" aria-label="Foto siguiente">' + arrow + '</button></div>' +
    '<div class="gk-lb__thumbs">' + items.map(function (it, k) {
      return '<button type="button" class="gk-lb__thumb" data-k="' + k + '" aria-label="Foto ' + (k + 1) + '"><img src="' + it.thumb + '" alt="" loading="lazy"></button>';
    }).join('') + '</div>';
  document.body.appendChild(lb);
  var img = lb.querySelector('.gk-lb__img'), count = lb.querySelector('.gk-lb__count');
  var prev = lb.querySelector('.gk-lb__prev'), next = lb.querySelector('.gk-lb__next');
  var thumbs = [].slice.call(lb.querySelectorAll('.gk-lb__thumb'));
  var cur = -1, pad = function (n) { return (n < 10 ? '0' : '') + n; };
  if (items.length < 2) lb.querySelector('.gk-lb__thumbs').style.visibility = 'hidden';

  function show(k) {
    if (k < 0 || k >= items.length || k === cur) return;
    var dir = cur < 0 ? 0 : (k > cur ? 1 : -1);
    cur = k;
    count.innerHTML = pad(k + 1) + ' <span>/ ' + pad(items.length) + '</span>';
    prev.disabled = k === 0;
    next.disabled = k === items.length - 1;
    thumbs.forEach(function (t, i) { t.classList.toggle('is-on', i === k); });
    var th = thumbs[k], strip = th.parentNode;
    strip.scrollTo({ left: th.offsetLeft - strip.clientWidth / 2 + th.clientWidth / 2, behavior: 'smooth' });
    img.style.setProperty('--dir', dir);
    img.classList.add('is-out');
    lb.classList.add('is-loading');
    var pre = new Image();
    pre.onload = pre.onerror = function () {
      if (cur !== k) return;
      img.src = items[k].src;
      img.style.setProperty('--dir', -dir);
      lb.classList.remove('is-loading');
      requestAnimationFrame(function () { img.classList.remove('is-out'); });
    };
    pre.src = items[k].src;
  }
  function open(k) {
    cur = -1;
    lb.classList.add('is-open');
    document.documentElement.style.overflow = 'hidden';
    show(k);
    lb.querySelector('.gk-lb__close').focus({ preventScroll: true });
  }
  function close() {
    lb.classList.remove('is-open');
    document.documentElement.style.overflow = '';
  }
  // Se adelanta al visor de la plantilla (fase de captura)
  document.addEventListener('click', function (e) {
    for (var i = 0; i < items.length; i++) {
      if (items[i].el === e.target || items[i].el.contains(e.target)) {
        e.preventDefault();
        e.stopPropagation();
        return open(i);
      }
    }
  }, true);
  lb.querySelector('.gk-lb__close').addEventListener('click', close);
  prev.addEventListener('click', function () { show(cur - 1); });
  next.addEventListener('click', function () { show(cur + 1); });
  thumbs.forEach(function (t) { t.addEventListener('click', function () { show(+t.dataset.k); }); });
  lb.querySelector('.gk-lb__stage').addEventListener('click', function (e) { if (e.target === e.currentTarget) close(); });
  document.addEventListener('keydown', function (e) {
    if (!lb.classList.contains('is-open')) return;
    if (e.key === 'Escape') close();
    else if (e.key === 'ArrowRight') show(cur + 1);
    else if (e.key === 'ArrowLeft') show(cur - 1);
  });
  var sx = null;
  lb.addEventListener('touchstart', function (e) { sx = e.touches[0].clientX; }, { passive: true });
  lb.addEventListener('touchend', function (e) {
    if (sx === null) return;
    var dx = e.changedTouches[0].clientX - sx;
    sx = null;
    if (Math.abs(dx) > 45) show(cur + (dx < 0 ? 1 : -1));
  });
})();
</script>
"""

AVISOS_JS = '''
<script>
/* Avisos de privacidad: elegir una empresa ya no regresa la página hasta arriba; se marca y se muestra su domicilio */
document.addEventListener('click', function (e) {
  var a = e.target.closest && e.target.closest('a[id^="_"][href="#"]');
  if (!a) return;
  e.preventDefault();
  [].forEach.call(document.querySelectorAll('a.gk-aviso-on'), function (x) { x.classList.remove('gk-aviso-on'); });
  a.classList.add('gk-aviso-on');
  var d = document.getElementById('direccion');
  if (d) {
    var r = d.getBoundingClientRect();
    if (r.top < 90 || r.bottom > innerHeight) d.scrollIntoView({ behavior: 'smooth', block: 'center' });
  }
});
</script>
'''


# ---------------------------------------------------------------------------------------------------------------
# SEO
# ---------------------------------------------------------------------------------------------------------------

def new_site_meta(route):
    """Descripción e imagen para compartir de la misma ruta en el sitio nuevo (dist/), si ya se compiló"""
    path = os.path.join(DIST, route.strip('/'), 'index.html')
    if not os.path.exists(path):
        return None, None
    src = open(path, encoding='utf-8').read()
    desc = re.search(r'<meta name="description" content="([^"]*)"', src)
    img = re.search(r'<meta property="og:image" content="https?://[^/]+(/og/[^"]+)"', src)
    return (htmllib.unescape(desc.group(1)) if desc else None), (img.group(1) if img else None)


def head_seo(title, route, desc, og_image, news=None):
    e = lambda s: htmllib.escape(s, quote=True)
    img = SITE_URL + (og_image or '/og/home.jpg')
    tags = [
        f'<meta name="description" content="{e(desc)}">',
        f'<link rel="canonical" href="{SITE_URL}{route}">',
        '<link rel="icon" href="/favicon.ico" sizes="32x32">',
        '<link rel="icon" type="image/svg+xml" href="/favicon.svg">',
        '<link rel="apple-touch-icon" href="/apple-touch-icon.png">',
        '<link rel="manifest" href="/site.webmanifest">',
        '<meta name="theme-color" content="#404a3d">',
        '<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>',
        f'<meta property="og:type" content="{"article" if news else "website"}">',
        '<meta property="og:site_name" content="Grupo Kasto">',
        '<meta property="og:locale" content="es_MX">',
        f'<meta property="og:title" content="{e(title)}">',
        f'<meta property="og:description" content="{e(desc)}">',
        f'<meta property="og:url" content="{SITE_URL}{route}">',
        f'<meta property="og:image" content="{img}">',
        '<meta property="og:image:width" content="1200">',
        '<meta property="og:image:height" content="630">',
        '<meta name="twitter:card" content="summary_large_image">',
        f'<meta name="twitter:title" content="{e(title)}">',
        f'<meta name="twitter:description" content="{e(desc)}">',
        f'<meta name="twitter:image" content="{img}">',
    ]
    if news:
        tags.append(f'<meta property="article:published_time" content="{news["date"]}">')
        ld = {
            '@context': 'https://schema.org', '@type': 'NewsArticle', 'headline': news['title'][:110], 'description': desc,
            'datePublished': news['date'], 'image': [img], 'mainEntityOfPage': SITE_URL + route,
            'author': {'@type': 'Organization', 'name': 'Grupo Kasto'},
            'publisher': {'@type': 'Organization', 'name': 'Grupo Kasto', 'logo': {'@type': 'ImageObject', 'url': SITE_URL + '/icon-512.png'}},
        }
        tags.append('<script type="application/ld+json">' + json.dumps(ld, ensure_ascii=False) + '</script>')
    if route != '/':
        crumbs = [{'@type': 'ListItem', 'position': 1, 'name': 'Inicio', 'item': SITE_URL + '/'}]
        parts = [p for p in route.strip('/').split('/') if p]
        if len(parts) > 1 and parts[0] == 'noticias':
            crumbs.append({'@type': 'ListItem', 'position': 2, 'name': 'Noticias', 'item': SITE_URL + '/noticias/'})
        crumbs.append({'@type': 'ListItem', 'position': len(crumbs) + 1, 'name': title.split(' | ')[0], 'item': SITE_URL + route})
        tags.append('<script type="application/ld+json">' + json.dumps({'@context': 'https://schema.org', '@type': 'BreadcrumbList', 'itemListElement': crumbs}, ensure_ascii=False) + '</script>')
    return '\n    ' + '\n    '.join(tags)


def polish(html, pid, route, title, news=None):
    # --- <head>: fuera las etiquetas viejas de SEO/íconos, entran las completas ---
    html = re.sub(r'\s*<meta (?:name|property)="(?:description|keywords|og:[^"]+|twitter:[^"]+)"[^>]*>', '', html)
    html = re.sub(r'\s*<link rel="(?:canonical|icon|apple-touch-icon|manifest|preconnect)"[^>]*>', '', html)
    desc, og = new_site_meta(route)
    if news and news.get('excerpt'):
        desc = news['excerpt']
    desc = desc or ('Grupo Kasto es un grupo empresarial mexicano con más de 75 años de experiencia en el sector agroindustrial: '
                    'granos, molinos de trigo, pecuaria, servicios, invernaderos, panadería y productos de consumo.')
    if not og or not os.path.exists(os.path.join(ROOT, 'public', og.lstrip('/'))):
        og = '/og/home.jpg'
    html = re.sub(r'(<title>[^<]*</title>)', lambda m: m.group(1) + head_seo(title, route, desc, og, news), html, count=1)
    html = html.replace('</head>', CSS + (CONTACT_CSS if pid == 2 else '') + '\n</head>', 1)
    # Logotipo de la organización (datos estructurados) en alta resolución
    html = html.replace('"logo": "' + SITE_URL + '/static/logo-gk_2.png"', '"logo": "' + SITE_URL + '/icon-512.png"')

    # --- Un <h1> por página ---
    if pid == 1:
        # Portada: solo la primera foto del carrusel lleva <h1>; las demás el mismo texto con el mismo estilo
        n = [0]
        def slide(m):
            n[0] += 1
            return m.group(0) if n[0] == 1 else m.group(0).replace('<h1', '<p class="gk-h1"', 1).replace('</h1>', '</p>')
        html = re.sub(r'<h1[^>]*>[\s\S]*?</h1>', slide, html)
    elif news:
        # Noticia: el <h1> es el título de la nota (el encabezado dice "Noticias detalladas")
        html = re.sub(r'(<div class="news_detail_content">\s*)<h2>([\s\S]*?)</h2>', r'\1<h1 class="gk-news-title">\2</h1>', html, count=1)
    else:
        html = re.sub(r'(<section\s+class="page-header"[\s\S]*?)<h2>([\s\S]*?)</h2>', r'\1<h1>\2</h1>', html, count=1)

    # --- Textos alternativos ---
    html = html.replace('alt="Awesome Image"', 'alt="Grupo Kasto"').replace('alt="Farm Image"', 'alt=""').replace('alt="Need Image"', 'alt=""').replace('alt="Read Image"', 'alt=""').replace('alt="brand"', 'alt="Marca de Grupo Kasto"')

    # --- Enlaces que no llevaban a ningún lado ---
    html = re.sub(r'<a href="#">(\s*<img)', r'<a>\1', html)  # logos de marcas
    html = re.sub(r'<h2><a href="#">([^<]*)</a></h2>', r'<h2>\1</h2>', html)  # nombres de colaboradores
    html = html.replace('<a href="#" class="sidebar__post-content_meta">', '<a class="sidebar__post-content_meta">')  # autor de la nota
    html = re.sub(r'<a href="#">([^<]{1,40})</a>', lambda m: f'<span class="gk-tag">{m.group(1)}</span>'
                  if m.group(1).strip() not in ('Nosotros', 'Divisiones', 'Servicios') else m.group(0), html)  # etiquetas de noticias
    # Teléfonos sin enlace -> se pueden marcar
    html = re.sub(r'<a>\s*(\(?\d{2,3}\)?[\d ]{7,12}\d)\s*</a>', lambda m: f'<a href="{tel(m.group(1))}">{m.group(1).strip()}</a>', html)

    # --- Por página ---
    if pid == 2:
        start = html.find('<section class="location">')
        end = html.find('<footer class="site-footer">')
        if start > 0 and end > start:
            html = html[:start] + contact_html() + html[end:]
    if pid == 17:  # Certificaciones: el logo ESR venía de un sitio que ya no lo sirve
        html = re.sub(r'<img[^>]*Logo-ESR\.png[^>]*/?>', ESR_BADGE, html)
    extra = ''
    if pid == 2:
        extra += CONTACT_JS
    if pid == 6:
        extra += AVISOS_JS
    if 'img-popup' in html or 'news_detail_image_box' in html:
        extra += LIGHTBOX
    if extra:
        i = html.rfind('</body>')
        html = html[:i] + extra + html[i:]
    return html


def copy_brand_files(out):
    """Íconos del navegador y del celular, e imágenes para compartir: los mismos del sitio nuevo"""
    import shutil
    pub = os.path.join(ROOT, 'public')
    for f in ('favicon.ico', 'favicon.svg', 'apple-touch-icon.png', 'icon-192.png', 'icon-512.png', 'site.webmanifest'):
        shutil.copyfile(os.path.join(pub, f), os.path.join(out, f))
    og = os.path.join(pub, 'og')
    shutil.copytree(og, os.path.join(out, 'og'), dirs_exist_ok=True, ignore=shutil.ignore_patterns('en'))
