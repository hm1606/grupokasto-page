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
  { name: 'Barlow Condensed', data: await font('barlow-condensed', 'barlow-condensed-latin-600-normal.woff'), weight: 600, style: 'normal' },
  { name: 'Barlow', data: await font('barlow', 'barlow-latin-500-normal.woff'), weight: 500, style: 'normal' },
  { name: 'Marcellus SC', data: await font('marcellus-sc', 'marcellus-sc-latin-400-normal.woff'), weight: 400, style: 'normal' },
];

// Paleta oficial de Grupo Kasto
const C = { olivo: '#404a3d', hoja: '#5b8c51', trigo: '#eddd5e', crema: '#f5f0e9' };
const W = 1200;
const H = 630;
// La balanza de Grupo Kasto (misma geometría que src/lib/brand.ts), viewBox 0 0 60 48
const MARK = '<g fill="none" stroke="currentColor" stroke-width="1.15" stroke-linejoin="miter" stroke-miterlimit="10"><path d="M14.4 1.4 2.7 33.4h23.4Z"/><path d="M45.6 1.4 33.9 33.4h23.4Z"/><path d="M22.4 1.7h15.2L30 22.4Z"/></g><g fill="currentColor"><rect x="2" y="32.7" width="24.8" height="1.6"/><rect x="33.2" y="32.7" width="24.8" height="1.6"/><path d="M1.9 36h25a12.5 10.6 0 0 1-25 0Z"/><path d="M33.1 36h25a12.5 10.6 0 0 1-25 0Z"/></g><g fill="none" stroke="currentColor" stroke-width=".35"><circle cx="57.6" cy="2.4" r="1.6"/><path d="M57 3.4V1.4h.7a.5.5 0 0 1 0 1H57m.6 0 .6 1"/></g>';
const markUri = (color) => `data:image/svg+xml;base64,${Buffer.from(`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 60 48" color="${color}">${MARK}</svg>`).toString('base64')}`;

const h = (style, children = []) => ({ type: 'div', props: { style: { display: 'flex', ...style }, children } });

async function photoUri(file) {
  const buf = await sharp(file).resize(W, H, { fit: 'cover', position: 'attention' }).jpeg({ quality: 80 }).toBuffer();
  return `data:image/jpeg;base64,${buf.toString('base64')}`;
}

async function card({ photo, eyebrow, title, out }) {
  const size = title.length > 70 ? 56 : title.length > 45 ? 66 : 80;
  const tree = h({ width: W, height: H, position: 'relative', background: C.olivo, fontFamily: 'Barlow' }, [
    { type: 'img', props: { src: await photoUri(photo), style: { position: 'absolute', left: 0, top: 0, width: W, height: H } } },
    h({ position: 'absolute', left: 0, top: 0, width: W, height: H, backgroundImage: 'linear-gradient(90deg, rgba(64,74,61,.95) 0%, rgba(64,74,61,.8) 50%, rgba(64,74,61,.2) 100%)' }),
    h({ position: 'absolute', left: 72, top: 64, right: 72, bottom: 64, flexDirection: 'column', justifyContent: 'space-between' }, [
      h({ flexDirection: 'column', alignItems: 'center', width: 150 }, [
        { type: 'img', props: { src: markUri(C.crema), width: 80, height: 64 } },
        h({ marginTop: 8, color: C.crema, fontFamily: 'Marcellus SC', fontSize: 23 }, 'Grupo Kasto'),
      ]),
      h({ flexDirection: 'column', maxWidth: 820 }, [
        h({ color: C.trigo, fontFamily: 'Barlow Condensed', fontSize: 24, fontWeight: 600, letterSpacing: 4, textTransform: 'uppercase' }, eyebrow),
        h({ marginTop: 14, color: C.crema, fontFamily: 'Barlow Condensed', fontWeight: 600, fontSize: size, lineHeight: 1.02, textTransform: 'uppercase' }, title.replace(/\.$/, '')),
      ]),
      h({ color: 'rgba(245,240,233,.75)', fontSize: 21 }, 'grupokasto.com · Desde 1945'),
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

// Íconos: balanza amarilla sobre el olivo de la marca
const iconSvg = (size, radius) =>
  `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${size} ${size}"><rect width="${size}" height="${size}" rx="${radius}" fill="${C.olivo}"/><svg x="${size * 0.17}" y="${size * 0.2}" width="${size * 0.66}" height="${size * 0.6}" viewBox="-1 -1 62 50" color="${C.trigo}">${MARK}</svg></svg>`;
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
      background_color: C.crema,
      theme_color: C.olivo,
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
