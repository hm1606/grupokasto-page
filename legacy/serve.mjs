// Sirve legacy/site/ en local con las mismas reglas que Nginx (deploy/nginx-snippet-grupokasto-legacy-site.conf),
// para revisar el clon del sitio viejo sin servidor.  Uso:  npm run legacy:serve  ->  http://localhost:8102
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';

const SITE = path.join(import.meta.dirname, 'site');
const PORT = Number(process.argv[2] || process.env.PORT || 8102);
const ALIASES = JSON.parse(fs.readFileSync(path.join(SITE, '_apex', 'aliases.json'), 'utf8'));
const TYPES = {
  '.html': 'text/html; charset=utf-8', '.css': 'text/css', '.js': 'application/javascript', '.json': 'application/json',
  '.png': 'image/png', '.jpg': 'image/jpeg', '.jpeg': 'image/jpeg', '.gif': 'image/gif', '.svg': 'image/svg+xml', '.webp': 'image/webp',
  '.ico': 'image/x-icon', '.woff': 'font/woff', '.woff2': 'font/woff2', '.ttf': 'font/ttf', '.eot': 'application/vnd.ms-fontobject', '.pdf': 'application/pdf',
};

function apexPage(p) {
  const m = /^102(?::|%3A)([^:]+)/i.exec(p || '');
  if (!m) return 'p1';
  const key = m[1];
  if (/^\d+$/.test(key)) return fs.existsSync(path.join(SITE, '_apex', `p${key}.html`)) ? `p${key}` : 'p1';
  return `p${ALIASES[key.toUpperCase()] ?? 1}`;
}

function file(res, f, status = 200) {
  fs.readFile(f, (err, buf) => {
    if (err) {
      res.writeHead(404, { 'Content-Type': 'text/plain' });
      return res.end('404');
    }
    res.writeHead(status, { 'Content-Type': TYPES[path.extname(f).toLowerCase()] || 'application/octet-stream' });
    res.end(buf);
  });
}

http
  .createServer((req, res) => {
    const u = new URL(req.url, 'http://localhost');
    let p = decodeURIComponent(u.pathname);
    if (req.method === 'POST') {
      if (p === '/ords/PDB1/wwv_flow.ajax') {
        res.writeHead(200, { 'Content-Type': 'application/json' });
        return res.end('{}');
      }
      if (p === '/ords/PDB1/wwv_flow.accept') {
        const ref = req.headers.referer ? new URL(req.headers.referer) : null;
        res.writeHead(303, { Location: ref?.pathname === '/ords/PDB1/f' ? ref.pathname + ref.search : '/ords/PDB1/f?p=102:1' });
        return res.end();
      }
      res.writeHead(404);
      return res.end();
    }
    if (p === '/ords/PDB1/f') return file(res, path.join(SITE, '_apex', `${apexPage(u.searchParams.get('p'))}.html`));
    if (p.startsWith('/_apex/')) {
      res.writeHead(404);
      return res.end();
    }
    const m = /^\/ords\/PDB1\/xxpokasto\/r\/102\/files\/static\/v\d+\/(.+)$/.exec(p);
    if (m) p = `/static/${m[1]}`;
    if (p.endsWith('/')) p += 'index.html';
    const f = path.join(SITE, path.normalize(p));
    if (!f.startsWith(SITE)) {
      res.writeHead(403);
      return res.end();
    }
    file(res, f);
  })
  .listen(PORT, '127.0.0.1', () => console.log(`Sitio viejo en http://localhost:${PORT}/ords/PDB1/f?p=102:1`));
