import type { APIRoute } from 'astro';
import { legacyMap } from '../../lib/legacy';

// Genera dist/_nginx/grupokasto-redirects.conf: mapa de Nginx con las redirecciones 301 de las URLs
// del sitio viejo en APEX (/ords/PDB1/f?p=102:<página o alias>[:sesión[:…]]) a las páginas nuevas.
// deploy/deploy.sh lo copia a /etc/nginx/conf.d/ y no se publica en el sitio.
export const GET: APIRoute = async () => {
  const map = await legacyMap();
  const SEP = '(?::|%3A)'; // ":" puede venir codificado
  const esc = (k: string) => k.replace(/[.*+?^${}()|[\]\\-]/g, '\\$&');
  const lines = [
    '# Generado por src/pages/nginx/grupokasto-redirects.conf.ts (npm run build) — no editar a mano.',
    '# Va en /etc/nginx/conf.d/ (contexto http). Lo usa deploy/nginx-grupokasto.com.sitio-nuevo.conf',
    'map $arg_p $grupokasto_redirect {',
    '    default "";',
    ...Object.entries(map).map(([k, dest]) => `    "~*^102${SEP}${esc(k)}(${SEP}.*)?$" "${dest}";`),
    '    "~*^102$" "/";',
    '}',
    '',
  ];
  return new Response(lines.join('\n'), { headers: { 'Content-Type': 'text/plain; charset=utf-8' } });
};
