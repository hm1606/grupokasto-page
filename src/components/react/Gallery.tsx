import { AnimatePresence, motion } from 'motion/react';
import { useCallback, useEffect, useState } from 'react';
import type { Pic } from '../../lib/images';

export type GalleryItem = { thumb: Pic; full: Pic; caption: string; note?: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

/**
 * Cuadrícula de fotos con visor a pantalla completa (flechas, Esc y deslizar en celular).
 * layout="mosaic" alterna tamaños; "grid" las deja parejas.
 */
const TX = {
  es: { zoom: 'Ampliar foto', viewer: 'Visor de fotos', close: 'Cerrar', prev: 'Foto anterior', next: 'Foto siguiente' },
  en: { zoom: 'Enlarge photo', viewer: 'Photo viewer', close: 'Close', prev: 'Previous photo', next: 'Next photo' },
};

export default function Gallery({ items, layout = 'mosaic', lang = 'es' }: { items: GalleryItem[]; layout?: 'mosaic' | 'grid'; lang?: 'es' | 'en' }) {
  const tx = TX[lang];
  const [open, setOpen] = useState<number | null>(null);
  const close = useCallback(() => setOpen(null), []);
  const go = useCallback((d: number) => setOpen((n) => (n === null ? n : (n + d + items.length) % items.length)), [items.length]);

  useEffect(() => {
    if (open === null) return;
    const lenis = (window as any).__lenis;
    lenis?.stop();
    document.documentElement.style.overflow = 'hidden';
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape') close();
      if (e.key === 'ArrowRight') go(1);
      if (e.key === 'ArrowLeft') go(-1);
    };
    window.addEventListener('keydown', onKey);
    return () => {
      window.removeEventListener('keydown', onKey);
      lenis?.start();
      document.documentElement.style.overflow = '';
    };
  }, [open, close, go]);

  const span = (k: number) => {
    if (layout !== 'mosaic') return '';
    const pattern = ['sm:col-span-2 sm:row-span-2', '', '', '', 'sm:row-span-2', '', 'sm:col-span-2', ''];
    return pattern[k % pattern.length];
  };

  return (
    <>
      <ul className={`grid grid-cols-2 gap-3 sm:gap-4 ${layout === 'mosaic' ? 'auto-rows-[11rem] sm:auto-rows-[14rem] lg:grid-cols-4' : 'lg:grid-cols-3'}`}>
        {items.map((it, k) => (
          <li key={k} className={span(k)}>
            <button
              type="button"
              onClick={() => setOpen(k)}
              className={`group zoom relative block w-full overflow-hidden rounded-2xl bg-gris text-left ${layout === 'mosaic' ? 'h-full' : 'aspect-[4/3]'}`}
              aria-label={`${tx.zoom}: ${it.caption}`}
            >
              <img
                src={it.thumb.src}
                srcSet={it.thumb.srcset}
                sizes="(min-width: 1024px) 33vw, 50vw"
                alt={it.caption}
                loading="lazy"
                width={it.thumb.width}
                height={it.thumb.height}
                className="size-full object-cover"
              />
              <span className="absolute inset-0 bg-gradient-to-t from-olivo/75 via-transparent to-transparent opacity-80 transition-opacity duration-500 group-hover:opacity-100" />
              <span className="absolute inset-x-0 bottom-0 flex items-end justify-between gap-3 p-4 text-white">
                <span>
                  {it.note && <span className="eyebrow block text-[0.6rem] text-trigo">{it.note}</span>}
                  <span className="mt-1 block text-sm font-semibold">{it.caption}</span>
                </span>
                <span className="grid size-8 shrink-0 scale-75 place-items-center rounded-full bg-white/15 opacity-0 backdrop-blur transition-all duration-500 group-hover:scale-100 group-hover:opacity-100" aria-hidden="true">
                  <svg viewBox="0 0 16 16" className="size-3" fill="none" stroke="currentColor" strokeWidth="1.8">
                    <path d="M8 3v10M3 8h10" />
                  </svg>
                </span>
              </span>
            </button>
          </li>
        ))}
      </ul>

      <AnimatePresence>
        {open !== null && (
          <motion.div
            className="fixed inset-0 z-[120] flex flex-col bg-tinta/95 text-white backdrop-blur-md"
            role="dialog"
            aria-modal="true"
            aria-label={tx.viewer}
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.35 }}
            data-lenis-prevent
          >
            <div className="flex items-center justify-between px-5 py-4 sm:px-8">
              <p className="text-sm text-white/70 tabular-nums">
                {open + 1} / {items.length}
              </p>
              <button type="button" onClick={close} className="grid size-11 place-items-center rounded-full bg-white/10 transition-colors hover:bg-white/20" aria-label={tx.close} autoFocus>
                <svg viewBox="0 0 16 16" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.6">
                  <path d="m3 3 10 10M13 3 3 13" />
                </svg>
              </button>
            </div>
            <div className="relative flex flex-1 items-center justify-center overflow-hidden px-4 sm:px-20">
              <AnimatePresence mode="popLayout" initial={false}>
                <motion.img
                  key={open}
                  src={items[open].full.src}
                  srcSet={items[open].full.srcset}
                  sizes="100vw"
                  alt={items[open].caption}
                  className="max-h-[78vh] max-w-full rounded-xl object-contain"
                  initial={{ opacity: 0, scale: 0.97 }}
                  animate={{ opacity: 1, scale: 1 }}
                  exit={{ opacity: 0 }}
                  transition={{ duration: 0.45, ease }}
                  drag="x"
                  dragConstraints={{ left: 0, right: 0 }}
                  onDragEnd={(_, info) => {
                    if (info.offset.x < -60) go(1);
                    if (info.offset.x > 60) go(-1);
                  }}
                />
              </AnimatePresence>
              {items.length > 1 && (
                <>
                  <button type="button" onClick={() => go(-1)} className="absolute left-3 hidden size-12 place-items-center rounded-full bg-white/10 transition-colors hover:bg-white/20 sm:left-6 sm:grid" aria-label={tx.prev}>
                    <svg viewBox="0 0 16 16" className="size-4 rotate-180" fill="none" stroke="currentColor" strokeWidth="1.6">
                      <path d="M3 8h10m-4-4 4 4-4 4" />
                    </svg>
                  </button>
                  <button type="button" onClick={() => go(1)} className="absolute right-3 hidden size-12 place-items-center rounded-full bg-white/10 transition-colors hover:bg-white/20 sm:right-6 sm:grid" aria-label={tx.next}>
                    <svg viewBox="0 0 16 16" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.6">
                      <path d="M3 8h10m-4-4 4 4-4 4" />
                    </svg>
                  </button>
                </>
              )}
            </div>
            <p className="px-5 py-6 text-center text-sm text-white/80">
              {items[open].note && <span className="eyebrow mr-3 text-[0.6rem] text-trigo">{items[open].note}</span>}
              {items[open].caption}
            </p>
          </motion.div>
        )}
      </AnimatePresence>
    </>
  );
}
