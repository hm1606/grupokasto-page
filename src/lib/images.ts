import type { ImageMetadata } from 'astro';
import { getImage } from 'astro:assets';

// Todas las fotos de src/assets, por ruta sin extensión: img('divisiones/granos/hero')
const files = import.meta.glob<{ default: ImageMetadata }>('../assets/**/*.{jpg,jpeg,png,webp}', { eager: true });
const byKey = new Map<string, ImageMetadata>();
for (const [path, mod] of Object.entries(files)) {
  byKey.set(path.replace('../assets/', '').replace(/\.(jpe?g|png|webp)$/i, ''), mod.default);
}

export function img(key: string): ImageMetadata {
  const meta = byKey.get(key);
  if (!meta) throw new Error(`No existe la imagen src/assets/${key}.(jpg|png)`);
  return meta;
}

export const hasImg = (key: string) => byKey.has(key);


export type Pic = { src: string; srcset: string; width: number; height: number };

/** Versiones optimizadas (WebP) de una foto, listas para <img srcset> en componentes React */
export async function pic(source: string | ImageMetadata, widths = [480, 800, 1200, 1800]): Promise<Pic> {
  const meta = typeof source === 'string' ? img(source) : source;
  const ws = widths.filter((w) => w <= meta.width);
  if (!ws.length) ws.push(meta.width);
  const imgs = await Promise.all(ws.map((w) => getImage({ src: meta, width: w, format: 'webp', quality: 80 })));
  return {
    src: imgs[Math.min(1, imgs.length - 1)].src,
    srcset: imgs.map((im, i) => `${im.src} ${ws[i]}w`).join(', '),
    width: meta.width,
    height: meta.height,
  };
}
