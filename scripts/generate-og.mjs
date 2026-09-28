// Genera las imágenes para compartir (WhatsApp, Facebook, LinkedIn, X…) de 1200×630 y los íconos:
//   public/og/home.jpg                   portada
//   public/og/divisiones/<slug>.jpg      cada división
//   public/og/servicios/<slug>.jpg       cada servicio
//   public/og/noticias/<slug>.jpg        cada noticia
//   favicon.svg, favicon.ico, apple-touch-icon.png, icon-192.png, icon-512.png, site.webmanifest
// Uso: npm run og   (volver a correr al agregar noticias, divisiones o servicios)
import fs from 'node:fs/promises';
import path from 'node:path';
import satori from 'satori';
import { Resvg } from '@resvg/resvg-js';
import sharp from 'sharp';

const root = path.resolve(import.meta.dirname, '..');
const pub = (...p) => path.join(root, 'public', ...p);
const font = (pkg, file) => fs.readFile(path.join(root, 'node_modules/@fontsource', pkg, 'files', file));

const fonts = [
  { name: 'Fraunces', data: await font('fraunces', 'fraunces-latin-400-normal.woff'), weight: 400, style: 'normal' },
  { name: 'Fraunces', data: await font('fraunces', 'fraunces-latin-400-italic.woff'), weight: 400, style: 'italic' },
  { name: 'Manrope', data: await font('manrope', 'manrope-latin-600-normal.woff'), weight: 600, style: 'normal' },
];

const C = { bosque: '#15291d', hoja: '#5b8c51', trigo: '#e8d45f', harina: '#f7f4ec' };
const W = 1200;
const H = 630;
// La balanza de Grupo Kasto (misma geometría que src/components/Logo.astro)
const MARK =
  '<path fill-rule="evenodd" d="M30 4 2 46h56L30 4Zm0 7.6L9.85 41.8h40.3L30 11.6Z"/><path fill-rule="evenodd" d="M88 4 60 46h56L88 4Zm0 7.6L67.85 41.8h40.3L88 11.6Z"/><path fill-rule="evenodd" d="M40 3h38L59 31 40 3Zm7.55 4L59 23.9 70.45 7h-22.9Z"/><path d="M4 49.5h52c0 7-11.6 12-26 12S4 56.5 4 49.5Zm58 0h52c0 7-11.6 12-26 12s-26-5-26-12Z"/>';
const markUri = (color) => `data:image/svg+xml;base64,${Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 118 64" fill="${color}">${MARK}</svg>`).toString('base64')}`;

const h = (style, children = []) => ({ type: 'div', props: { style: { display: 'flex', ...style }, children } });

async function photoUri(file) {
  const buf = await sharp(file).resize(W, H, { fit: 'cover', position: 'attention' }).jpeg({ quality: 80 }).toBuffer();
  return `data:image/jpeg;base64,${buf.toString('base64')}`;
}

async function card({ photo, eyebrow, title, out }) {
  const size = title.length > 70 ? 50 : title.length > 45 ? 58 : 68;
  const tree = h({ width: W, height: H, position: 'relative', background: C.bosque, fontFamily: 'Manrope' }, [
    { type: 'img', props: { src: await photoUri(photo), style: { position: 'absolute', left: 0, top: 0, width: W, height: H } } },
    h({ position: 'absolute', left: 0, top: 0, width: W, height: H, backgroundImage: 'linear-gradient(90deg, rgba(21,41,29,.94) 0%, rgba(21,41,29,.78) 48%, rgba(21,41,29,.25) 100%)' }),
    h({ position: 'absolute', left: 72, top: 64, right: 72, bottom: 64, flexDirection: 'column', justifyContent: 'space-between' }, [
      h({ alignItems: 'center', gap: 18 }, [
        { type: 'img', props: { src: markUri(C.trigo), width: 96, height: 52 } },
        h({ color: C.harina, fontSize: 30, fontWeight: 600 }, 'Grupo Kasto'),
      ]),
      h({ flexDirection: 'column', maxWidth: 820 }, [
        h({ color: C.trigo, fontSize: 20, fontWeight: 600, letterSpacing: 4, textTransform: 'uppercase' }, eyebrow),
        h({ marginTop: 18, color: C.harina, fontFamily: 'Fraunces', fontSize: size, lineHeight: 1.08 }, title),
      ]),
      h({ color: 'rgba(247,244,236,.7)', fontSize: 20 }, 'grupokasto.com · Desde 1945'),
    ]),
  ]);
  const svg = await satori(tree, { width: W, height: H, fonts });
  const png = new Resvg(svg, { fitTo: { mode: 'width', value: W } }).render().asPng();
  await fs.mkdir(path.dirname(out), { recursive: true });
  await sharp(png).jpeg({ quality: 84, mozjpeg: true }).toFile(out);
}

const asset = async (key) => {
  for (const ext of ['jpg', 'png']) {
    const f = path.join(root, 'src/assets', `${key}.${ext}`);
    try {
      await fs.access(f);
      return f;
    } catch {}
  }
  throw new Error(`No existe src/assets/${key}`);
};

// Datos: se leen de los .ts sin compilar (solo slug, nombre y titular)
const readTs = (file) => fs.readFile(path.join(root, 'src/data', file), 'utf8');
const pick = (src, re) => [...src.matchAll(re)].map((m) => m.slice(1));
const divisions = pick(await readTs('divisions.ts'), /slug: '([^']+)',\s*name: '([^']+)',[\s\S]*?headline: '([^']+)'/g);
const services = pick(await readTs('services.ts'), /slug: '([^']+)',\s*name: '([^']+)',\s*headline: '([^']+)'/g);

await card({ photo: await asset('portada/bodega'), eyebrow: 'Grupo agroindustrial mexicano', title: 'Del campo a la mesa de México.', out: pub('og', 'home.jpg') });
for (const [slug, name, headline] of divisions) {
  await card({ photo: await asset(`divisiones/${slug}/hero`), eyebrow: name, title: headline, out: pub('og', 'divisiones', `${slug}.jpg`) });
}
for (const [slug, name, headline] of services) {
  await card({ photo: await asset(`servicios/${slug}/hero`), eyebrow: `Servicios · ${name}`, title: headline, out: pub('og', 'servicios', `${slug}.jpg`) });
}
const newsDir = path.join(root, 'src/content/noticias');
for (const file of await fs.readdir(newsDir)) {
  if (!file.endsWith('.md')) continue;
  const md = await fs.readFile(path.join(newsDir, file), 'utf8');
  const title = JSON.parse(md.match(/^title: (".*")$/m)[1]);
  const cover = path.resolve(newsDir, JSON.parse(md.match(/^cover: (".*")$/m)[1]));
  const category = JSON.parse(md.match(/^category: (".*")$/m)[1]);
  await card({ photo: cover, eyebrow: `Noticias · ${category}`, title, out: pub('og', 'noticias', file.replace(/\.md$/, '.jpg')) });
}

// Íconos: balanza amarilla sobre verde bosque
const iconSvg = (size, radius) =>
  `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${size} ${size}"><rect width="${size}" height="${size}" rx="${radius}" fill="${C.bosque}"/><svg x="${size * 0.14}" y="${size * 0.31}" width="${size * 0.72}" height="${size * 0.39}" viewBox="0 0 118 64" fill="${C.trigo}">${MARK}</svg></svg>`;
await fs.writeFile(pub('favicon.svg'), iconSvg(64, 14));
const png = (size, radius) => sharp(Buffer.from(iconSvg(size, radius))).png().toBuffer();
await fs.writeFile(pub('apple-touch-icon.png'), await png(180, 0));
await fs.writeFile(pub('icon-192.png'), await png(192, 36));
await fs.writeFile(pub('icon-512.png'), await png(512, 96));
// favicon.ico con un PNG de 32×32 dentro (formato ICO moderno)
const ico32 = await png(32, 7);
const header = Buffer.alloc(22);
header.writeUInt16LE(0, 0);
header.writeUInt16LE(1, 2);
header.writeUInt16LE(1, 4);
header.writeUInt8(32, 6);
header.writeUInt8(32, 7);
header.writeUInt16LE(1, 10);
header.writeUInt16LE(32, 12);
header.writeUInt32LE(ico32.length, 14);
header.writeUInt32LE(22, 18);
await fs.writeFile(pub('favicon.ico'), Buffer.concat([header, ico32]));
await fs.writeFile(
  pub('site.webmanifest'),
  JSON.stringify(
    {
      name: 'Grupo Kasto',
      short_name: 'Grupo Kasto',
      description: 'Grupo agroindustrial mexicano desde 1945',
      start_url: '/',
      display: 'standalone',
      background_color: C.harina,
      theme_color: C.bosque,
      lang: 'es-MX',
      icons: [
        { src: '/icon-192.png', sizes: '192x192', type: 'image/png' },
        { src: '/icon-512.png', sizes: '512x512', type: 'image/png', purpose: 'any maskable' },
      ],
    },
    null,
    2,
  ),
);
console.log(`✓ ${3 + divisions.length + services.length} + noticias: imágenes para compartir e íconos en public/`);
