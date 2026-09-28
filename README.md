# Grupo Kasto — grupokasto.com

Sitio de Grupo Kasto, migrado desde Oracle APEX (app 102). El repo tiene **dos sitios**:

| | Qué es | Dónde vive |
| --- | --- | --- |
| **Sitio nuevo** | Astro + React + Tailwind + Motion + Lenis. Portada animada, 8 divisiones, 4 servicios, noticias, sostenibilidad, contacto con API propia. | `src/`, `server/`, `public/` |
| **Sitio viejo (clon idéntico)** | El HTML que entregaba APEX, capturado página por página, con los mismos CSS/JS/imágenes, servido en sus URLs originales `/ords/PDB1/f?p=102:<página>`. Respaldo por si hace falta volver. | `legacy/` |

**Stack del sitio nuevo:** [Astro](https://astro.build) + [React](https://react.dev) + [Tailwind CSS 4](https://tailwindcss.com)
+ [Motion](https://motion.dev) (animaciones) + [Lenis](https://lenis.dev) (scroll suave). Astro genera HTML real por página
(ideal para Google) y las partes interactivas son componentes React en `src/components/react/`: carrusel de la portada,
contadores, explorador de divisiones, línea del tiempo, galerías con visor, filtro de noticias, pestañas de sostenibilidad,
selector de avisos de privacidad y formulario de contacto.

## Desarrollo

```bash
npm install
npm run dev            # sitio nuevo en http://localhost:4321
npm run api            # API del formulario en :4012 (el dev server le hace proxy a /api)
npm run build          # genera dist/
npm run og             # regenera favicon, íconos e imágenes para compartir (public/og/)
npm run legacy         # reconstruye el clon del sitio viejo en legacy/site/ (requiere old-page-recursos/, ver abajo)
npm run legacy:serve   # sirve el clon en http://localhost:8102/ords/PDB1/f?p=102:1
```

Requiere Node 22.12 o superior (y Python 3 con Pillow solo para `legacy/build.py` y `scripts/import-legacy.py`).

## ¿Dónde se edita cada cosa?

| Qué | Archivo |
| --- | --- |
| Teléfono, correo, domicilio, redes, menú, cifras de la portada, oficinas y temas del formulario | `src/data/site.ts` |
| Divisiones: textos, unidades de negocio, directorio (domicilios, teléfonos, webs, redes), fotos de instalaciones | `src/data/divisions.ts` |
| Servicios | `src/data/services.ts` |
| Historia (línea del tiempo), propósito, misión, visión, valores, testimonios, certificaciones, marcas, galería | `src/data/company.ts` |
| Modelo de sostenibilidad (ASG, ámbitos, objetivos, ODS, grupos de interés) y PDF | `src/data/sustainability.ts`, `public/docs/` |
| Avisos de privacidad (empresas y domicilios del responsable) | `src/data/privacy.ts` y `src/pages/avisos-de-privacidad.astro` |
| Noticias (una por archivo) | `src/content/noticias/<slug>.md` |
| Fotos (se optimizan solas a WebP en el build) | `src/assets/` |
| Colores y tipografías | `src/styles/global.css` (`@theme`) |
| Logotipo (balanza en vectores) | `src/components/Logo.astro` |
| A quién llegan los mensajes del formulario | `.env` del servidor (`CONTACT_TO_EMAIL`, ver `.env.example`) |

### Identidad

- **Colores:** verde hoja `#5b8c51` y amarillo trigo `#e8d45f` (las hojas del ícono de Grupo Kasto), verde bosque `#15291d`
  para fondos oscuros y harina `#f7f4ec` de fondo claro.
- **Tipografías** (en `public/fonts/`, sin depender de Google): Fraunces para títulos y Manrope para texto.
- **Logotipo:** la balanza se redibujó en SVG a partir del PNG original (143 px) para que se vea nítida en cualquier tamaño.

### Agregar una noticia

1. Copia las fotos a `src/assets/noticias/<slug>/` (la primera será la portada).
2. Crea `src/content/noticias/<slug>.md`:

   ```md
   ---
   title: "Título de la noticia"
   date: 2026-10-15
   excerpt: "Resumen de una o dos líneas (aparece en el listado y al compartir)."
   category: "Sostenibilidad"   # Comunidad, Divisiones, Eventos, Grupo Kasto, Nuestra gente, Seguridad y bienestar, Sostenibilidad
   cover: "../../assets/noticias/<slug>/portada.jpg"
   gallery:
     - "../../assets/noticias/<slug>/foto-1.jpg"
   ---
   Texto de la noticia en párrafos…
   ```

3. Corre `npm run og` para generar su imagen para compartir. Aparece sola en `/noticias/`, la portada y el sitemap.

## Formulario de contacto

`src/components/react/ContactForm.tsx` envía a `/api/contacto` → `server/api.mjs` (Node sin dependencias, PM2
`grupokasto-api`, puerto 4012), que manda el correo a **comunicacion@grupokasto.com** (igual que el `APEX_MAIL` del sitio
anterior) con el mismo diseño verde/amarillo. Con `RESEND_API_KEY` usa Resend; sin ella, FormSubmit (la primera vez
FormSubmit manda un correo de activación a esa dirección). Tiene trampa para bots, límite de envíos por IP y exige aceptar
el aviso de privacidad. **El clon del sitio viejo usa la misma API**, así su formulario de Contacto sigue funcionando.

## Sitio viejo (clon de APEX)

- `legacy/capture.py` descargó el HTML renderizado de las 47 páginas públicas (`legacy/capture/pages/`) y los pocos
  recursos que no venían en la copia del servidor (`legacy/capture/extra/`). Solo hace falta volver a correrlo si
  cambia el sitio viejo.
- `legacy/build.py` arma `legacy/site/` con esas páginas y la raíz web del servidor viejo (`old-page-recursos/grupokasto/`,
  no se sube a git; la carpeta `static/` es byte a byte lo que APEX servía como `#APP_IMAGES#`). También regenera
  `deploy/nginx-grupokasto-apex-map.conf` (página y alias de APEX → archivo).
- Cambios mínimos respecto al original: enlaces absolutos a `www.grupokasto.com/ords/…` vueltos relativos (para poder
  revisarlo en otro dominio), la sesión de APEX en 0, imágenes de molinosgrupokasto.com copiadas localmente y el
  formulario de Contacto conectado a la API. Lo que ya estaba roto en el sitio en vivo (p. ej. imágenes de
  apex.oracle.com, la página de Quejas con texto "Lorem ipsum", errores de `appear.js`) se dejó igual.
- `legacy/apex-export/` es el export de la aplicación 102 (referencia).

## SEO

- Título, descripción, canónica, Open Graph y X por página en `src/layouts/Layout.astro`.
- Datos estructurados (JSON-LD) en `src/lib/seo.ts`: corporativo con divisiones y puntos de contacto, sitio, páginas,
  cada división con sus empresas y domicilios, servicios, noticias (`NewsArticle`) y migas de pan.
- Imágenes para compartir de 1200×630 por página en `public/og/` (`npm run og`).
- Sitemap automático (`/sitemap-index.xml`) y `robots.txt`. En el dominio de revisión (`NOINDEX=1`) todo es `noindex`.
- **Las URLs viejas no se pierden:** `/ords/PDB1/f?p=102:<página o alias>` redirige con 301 a la página nueva
  (mapa generado desde `src/lib/legacy.ts` al compilar → `dist/nginx/grupokasto-redirects.conf`), y las imágenes y el PDF
  del sitio viejo se siguen sirviendo en sus rutas originales.
- Se conserva Google Analytics (`G-241ZSMZBXR`), solo en producción.

## Despliegue (servidor 82.180.133.158, Nginx + PM2)

Repo clonado en `/var/www/grupokasto-page`. Para publicar: push a `main` y en el servidor:

```bash
bash /var/www/grupokasto-page/deploy/deploy.sh
```

Compila y publica los dos sitios, (re)inicia la API e instala la configuración de Nginx (con `nginx -t` y restauración
automática si algo falla; hay otros sitios en ese servidor).

| Dominio | Qué sirve | Carpeta |
| --- | --- | --- |
| `grupokasto.82-180-133-158.sslip.io` (revisión, `noindex`) | Sitio nuevo | `/var/www/grupokasto-site` |
| `grupokasto-legacy.82-180-133-158.sslip.io` (revisión, `noindex`) | Clon del sitio viejo | `/var/www/grupokasto-legacy` |
| `www.grupokasto.com` (cuando el DNS apunte a este servidor) | El que se elija con `GK_PROD` | — |

- HTTPS para la revisión: `certbot certonly --nginx -d grupokasto.82-180-133-158.sslip.io` y volver a correr `deploy.sh`.
- Secretos de la API en `/var/www/grupokasto-page/.env` (ver `.env.example`).

### Pasar www.grupokasto.com a este servidor

1. Apuntar el DNS de `grupokasto.com` y `www.grupokasto.com` (registro A) a `82.180.133.158`.
2. `certbot certonly --nginx -d www.grupokasto.com -d grupokasto.com`
3. Primero con el sitio viejo idéntico: `GK_PROD=legacy bash deploy/deploy.sh`
4. Cuando aprueben el sitio nuevo: `GK_PROD=nuevo bash deploy/deploy.sh` (activa las redirecciones 301 y la indexación).
