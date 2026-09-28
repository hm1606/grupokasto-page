// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
import sitemap from '@astrojs/sitemap';
import react from '@astrojs/react';

// Dominio público. Se define al compilar: SITE_URL=https://... npm run build
// (revisión: https://dev.grupokasto.com · producción: https://www.grupokasto.com)
const site = process.env.SITE_URL || 'https://www.grupokasto.com';
const lastmod = new Date().toISOString();

// https://astro.build/config
export default defineConfig({
  site,
  trailingSlash: 'ignore',
  // Precarga la página destino al pasar el mouse o tocar el enlace: navegación casi instantánea
  prefetch: { prefetchAll: true, defaultStrategy: 'hover' },
  integrations: [
    react(),
    sitemap({
      // Fuera del sitemap: la redirección de URLs viejas de APEX y la página 404
      filter: (page) => !page.includes('/ords/') && !page.includes('/nginx/') && !page.includes('/404'),
      serialize(item) {
        const path = new URL(item.url).pathname;
        item.lastmod = lastmod;
        if (path === '/') Object.assign(item, { priority: 1.0, changefreq: 'weekly' });
        else if (/^\/(divisiones|servicios|noticias)\/$/.test(path)) Object.assign(item, { priority: 0.9, changefreq: 'weekly' });
        else if (/^\/(divisiones|servicios)\//.test(path)) Object.assign(item, { priority: 0.8, changefreq: 'monthly' });
        else if (path.startsWith('/noticias/')) Object.assign(item, { priority: 0.6, changefreq: 'yearly' });
        else Object.assign(item, { priority: 0.7, changefreq: 'monthly' });
        return item;
      },
    }),
  ],
  vite: {
    plugins: [tailwindcss()],
    server: {
      // En desarrollo, el formulario usa la API local (npm run api)
      proxy: { '/api': 'http://127.0.0.1:4012' },
    },
  },
});
