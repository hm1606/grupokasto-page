import { getCollection } from 'astro:content';
import { divisions } from '../data/divisions';
import { services } from '../data/services';

/**
 * Páginas del sitio viejo en Oracle APEX (f?p=102:<número o alias>) -> ruta nueva.
 * Lo usan /ords/PDB1/f (redirección en el navegador), la página 404 y deploy/gen-nginx-redirects.mjs
 * (redirecciones 301 en Nginx cuando el sitio nuevo pase a producción).
 */
export async function legacyMap(): Promise<Record<string, string>> {
  const map: Record<string, string> = {
    '1': '/',
    home: '/',
    '2': '/contacto/',
    '3': '/nosotros/',
    '5': '/galeria/',
    '6': '/avisos-de-privacidad/',
    '11': '/noticias/',
    '16': '/filosofia/',
    '17': '/certificaciones/',
    '23': '/noticias/',
    '24': '/contacto/',
    '28': '/contacto/?tema=quejas',
    '45': '/sostenibilidad/',
    '46': '/sostenibilidad/',
    '9999': '/',
    'login_desktop': '/',
  };
  for (const d of divisions) map[String(d.legacyPage)] = `/divisiones/${d.slug}/`;
  map['molino-de-trigo'] = '/divisiones/molinos-de-trigo/';
  for (const s of services) map[String(s.legacyPage)] = `/servicios/${s.slug}/`;
  for (const n of await getCollection('noticias')) {
    if (!n.data.legacyPage) continue;
    map[String(n.data.legacyPage)] = `/noticias/${n.id}/`;
  }
  // Alias "NOTICIAS-DETALLADAS-<n>" de APEX (n = número de la noticia, no de la página)
  const aliasToPage: Record<string, number> = { 8: 31, 9: 29, 10: 32, 11: 33, 12: 34, 13: 35, 14: 36, 15: 37, 16: 38, 17: 39, 18: 40, 19: 41, 20: 42, 21: 43, 22: 44 };
  for (const [alias, page] of Object.entries(aliasToPage)) {
    if (map[String(page)]) map[`noticias-detalladas-${alias}`] = map[String(page)];
  }
  return map;
}

/** Script (sin dependencias) que resuelve ?p=102:<página>:<sesión>:… a la ruta nueva. */
export const legacyRedirectScript = (map: Record<string, string>) => `(function(){
  var map=${JSON.stringify(map)};
  var m=location.search.match(/[?&]p=([^&#]*)/i);
  if(!m) return;
  var parts=decodeURIComponent(m[1]).split(':');
  var page=String(parts[1]||'1').toLowerCase();
  location.replace(map[page]||'/');
})();`;
