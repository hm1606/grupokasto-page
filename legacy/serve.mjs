// Sirve legacy/site/ en local con las mismas reglas que Nginx (deploy/nginx-snippet-grupokasto-legacy-site.conf),
// para revisar el sitio anterior sin servidor.  Uso:  npm run legacy:serve  ->  http://localhost:8102
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';

const SITE = path.join(import.meta.dirname, 'site');
const PORT = Number(process.argv[2] || process.env.PORT || 8102);
const API = process.env.API_URL || 'http://127.0.0.1:4012';
const { pages, images } = JSON.parse(fs.readFileSync(path.join(import.meta.dirname, 'redirects.json'), 'utf8'));
const TYPES = {
  '.html': 'text/html; charset=utf-8', '.css': 'text/css', '.js': 'application/javascript', '.json': 'application/json',
  '.png': 'image/png', '.jpg': 'image/jpeg', '.jpeg': 'image/jpeg', '.gif': 'image/gif', '.svg': 'image/svg+xml', '.webp': 'image/webp',
  '.ico': 'image/x-icon', '.woff': 'font/woff', '.woff2': 'font/woff2', '.ttf': 'font/ttf', '.eot': 'application/vnd.ms-fontobject',
  '.pdf': 'application/pdf', '.xml': 'application/xml', '.txt': 'text/plain; charset=utf-8',
};

/** f?p=102:<número o alias>[:sesión…] -> ruta limpia */
function apexRoute(p) {
  const m = /^102(?::|%3A)([^:]+)/i.exec(p || '');
  return (m && pages[m[1].toLowerCase()]) || '/';
}

const redirect = (res, to) => {
  res.writeHead(301, { Location: to });
  res.end();
};

function file(res, f, status = 200) {
  fs.readFile(f, (err, buf) => {
    if (err) return file(res, path.join(SITE, '404.html'), 404);
    res.writeHead(status, { 'Content-Type': TYPES[path.extname(f).toLowerCase()] || 'application/octet-stream' });
    res.end(buf);
  });
}

http
  .createServer((req, res) => {
    const u = new URL(req.url, 'http://localhost');
    let p = decodeURIComponent(u.pathname);
    if (p.startsWith('/api/')) {
      // Formulario de contacto -> API local (npm run api)
      const up = http.request(API + req.url, { method: req.method, headers: req.headers }, (r) => {
        res.writeHead(r.statusCode, r.headers);
        r.pipe(res);
      });
      up.on('error', () => {
        res.writeHead(502);
        res.end();
      });
      return req.pipe(up);
    }
    if (p === '/ords/PDB1/f') return redirect(res, apexRoute(u.searchParams.get('p')));
    const m = /^\/ords\/PDB1\/xxpokasto\/r\/102\/files\/static\/v\d+\/(.+)$/.exec(p);
    if (m) return redirect(res, `/static/${m[1]}`);
    if (p === '/static/Modelo_de_Sostenibilidad_GK.pdf') return redirect(res, '/sostenibilidad/');
    if (images[p]) return redirect(res, images[p]);
    if (p.endsWith('/')) p += 'index.html';
    else if (!path.extname(p)) return redirect(res, `${p}/${u.search}`);
    const f = path.join(SITE, path.normalize(p));
    if (!f.startsWith(SITE)) {
      res.writeHead(403);
      return res.end();
    }
    file(res, f);
  })
  .listen(PORT, '127.0.0.1', () => console.log(`Sitio anterior en http://localhost:${PORT}/`));
