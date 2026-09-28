import type { APIRoute } from 'astro';
import { legacyMap, legacyRedirectScript } from '../../../lib/legacy';

// Genera /ords/PDB1/f.html: las URLs viejas de APEX (https://www.grupokasto.com/ords/PDB1/f?p=102:7)
// llegan aquí y se redirigen a la página nueva equivalente. En producción Nginx ya responde con 301
// (deploy/nginx-grupokasto-redirects.conf); esto cubre cualquier otro servidor.
export const GET: APIRoute = async () =>
  new Response(
    `<!doctype html><html lang="es"><head><meta charset="utf-8"><meta name="robots" content="noindex"><title>Grupo Kasto</title>
<script>${legacyRedirectScript(await legacyMap())}</script>
<noscript><meta http-equiv="refresh" content="0; url=/"></noscript></head>
<body><p><a href="/">Ir a Grupo Kasto</a></p><script>if(!/[?&]p=/i.test(location.search))location.replace('/');</script></body></html>`,
    { headers: { 'Content-Type': 'text/html; charset=utf-8' } },
  );
