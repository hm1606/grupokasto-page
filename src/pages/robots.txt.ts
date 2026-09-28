import type { APIRoute } from 'astro';
import { noindex } from '../lib/env';

// En el dominio de revisión (NOINDEX=1) se pide a los buscadores no indexar nada.
export const GET: APIRoute = ({ site }) => {
  const body = noindex
    ? 'User-agent: *\nDisallow: /\n'
    : `User-agent: *\nAllow: /\nDisallow: /ords/\n\nSitemap: ${new URL('/sitemap-index.xml', site).href}\n`;
  return new Response(body, { headers: { 'Content-Type': 'text/plain; charset=utf-8' } });
};
