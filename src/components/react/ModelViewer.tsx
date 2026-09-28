import { AnimatePresence, motion, useReducedMotion } from 'motion/react';
import { useCallback, useEffect, useRef, useState } from 'react';
import type { Pic } from '../../lib/images';

export type ModelPage = { image: Pic; thumb: string };
type Copy = { page: string; of: string; prev: string; next: string; expand: string; close: string; pages: string };

const ease = [0.2, 0.7, 0.2, 1] as const;

/**
 * Visor del Modelo de Sostenibilidad: las láminas del documento como imágenes, para consultarlo en la página
 * (sin PDF que descargar). Flechas, teclado, deslizar con el dedo, miniaturas y pantalla completa.
 */
export default function ModelViewer({ pages, title, copy }: { pages: ModelPage[]; title: string; copy: Copy }) {
  const [i, setI] = useState(0);
  const [dir, setDir] = useState(1);
  const [open, setOpen] = useState(false);
  const reduce = useReducedMotion();
  const root = useRef<HTMLDivElement>(null);
  const n = pages.length;

  const go = useCallback(
    (k: number) => {
      const next = Math.max(0, Math.min(n - 1, k));
      setDir(next >= i ? 1 : -1);
      setI(next);
    },
    [i, n],
  );

  // Teclado: flechas (cuando el visor está a la vista o en pantalla completa) y Esc para cerrar
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (e.key === 'Escape' && open) return setOpen(false);
      if (e.key !== 'ArrowRight' && e.key !== 'ArrowLeft') return;
      const r = root.current?.getBoundingClientRect();
      const visible = open || (r && r.top < innerHeight * 0.6 && r.bottom > innerHeight * 0.4);
      if (!visible) return;
      e.preventDefault();
      go(i + (e.key === 'ArrowRight' ? 1 : -1));
    };
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [go, i, open]);

  // Pantalla completa: detiene el scroll de la página
  useEffect(() => {
    const lenis = (window as any).__lenis;
    open ? lenis?.stop() : lenis?.start();
    document.documentElement.style.overflow = open ? 'hidden' : '';
  }, [open]);

  // La miniatura activa siempre a la vista (solo se desplaza la tira, nunca la página)
  useEffect(() => {
    root.current?.querySelectorAll<HTMLElement>('[data-thumbs]').forEach((strip) => {
      const el = strip.children[i] as HTMLElement | undefined;
      if (el) strip.scrollTo({ left: el.offsetLeft - strip.clientWidth / 2 + el.clientWidth / 2, behavior: reduce ? 'auto' : 'smooth' });
    });
  }, [i, open, reduce]);

  // Precarga la lámina siguiente y la anterior
  useEffect(() => {
    for (const k of [i + 1, i - 1]) {
      const p = pages[k];
      if (!p) continue;
      const im = new Image();
      im.sizes = open ? '100vw' : '(min-width:1280px) 1200px, 100vw';
      im.srcset = p.image.srcset;
    }
  }, [i, open, pages]);

  // Deslizar con el dedo
  const start = useRef<{ x: number; y: number } | null>(null);
  const onDown = (e: React.PointerEvent) => {
    if (e.pointerType !== 'mouse') start.current = { x: e.clientX, y: e.clientY };
  };
  const onUp = (e: React.PointerEvent) => {
    const s = start.current;
    start.current = null;
    if (!s) return;
    const dx = e.clientX - s.x;
    if (Math.abs(dx) > 40 && Math.abs(dx) > Math.abs(e.clientY - s.y)) go(i + (dx < 0 ? 1 : -1));
  };

  const p = pages[i];
  const noSave = { onContextMenu: (e: React.MouseEvent) => e.preventDefault(), onDragStart: (e: React.DragEvent) => e.preventDefault() };
  const counter = (
    <span className="font-serif text-sm font-semibold tracking-[0.14em] tabular-nums">
      {String(i + 1).padStart(2, '0')} <span className="opacity-50">/ {String(n).padStart(2, '0')}</span>
    </span>
  );
  const arrow = (d: 1 | -1, cls = '') => (
    <button
      type="button"
      onClick={() => go(i + d)}
      disabled={d === 1 ? i === n - 1 : i === 0}
      aria-label={d === 1 ? copy.next : copy.prev}
      className={`grid size-9 place-items-center rounded-full bg-olivo/85 sm:size-12 text-crema shadow-lg ring-1 ring-white/15 backdrop-blur transition hover:bg-trigo hover:text-olivo disabled:pointer-events-none disabled:opacity-0 ${cls}`}
    >
      <svg viewBox="0 0 16 16" className={`size-4 ${d === -1 ? 'rotate-180' : ''}`} fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
        <path d="M3 8h10m-4-4 4 4-4 4" />
      </svg>
    </button>
  );

  const stage = (full: boolean) => (
    <div
      className={`gk-noselect relative overflow-hidden bg-white ${full ? 'aspect-video max-h-full w-full max-w-[min(100%,calc((100svh-9rem)*16/9))]' : 'aspect-video w-full rounded-2xl shadow-2xl shadow-black/30'}`}
      onPointerDown={onDown}
      onPointerUp={onUp}
      {...noSave}
    >
      <AnimatePresence initial={false} custom={dir}>
        <motion.img
          key={i}
          src={p.image.src}
          srcSet={p.image.srcset}
          sizes={full ? '100vw' : '(min-width:1280px) 1200px, 100vw'}
          alt={`${title} — ${copy.page} ${i + 1} ${copy.of} ${n}`}
          width={p.image.width}
          height={p.image.height}
          draggable={false}
          className="absolute inset-0 size-full object-contain"
          custom={dir}
          initial={reduce ? { opacity: 0 } : { opacity: 0, x: `${dir * 6}%` }}
          animate={{ opacity: 1, x: '0%' }}
          exit={reduce ? { opacity: 0 } : { opacity: 0, x: `${dir * -6}%` }}
          transition={{ duration: 0.55, ease }}
          loading={i === 0 && !full ? 'lazy' : 'eager'}
        />
      </AnimatePresence>
      {/* Capa transparente encima de la lámina: evita "guardar imagen" con clic derecho o toque largo */}
      <div className="absolute inset-0" aria-hidden="true" />
      <div className="pointer-events-none absolute inset-y-0 left-3 flex items-center sm:left-5">
        <div className="pointer-events-auto">{arrow(-1)}</div>
      </div>
      <div className="pointer-events-none absolute inset-y-0 right-3 flex items-center sm:right-5">
        <div className="pointer-events-auto">{arrow(1)}</div>
      </div>
    </div>
  );

  const strip = (
    <div data-thumbs className="relative flex gap-2.5 overflow-x-auto pb-2 [scrollbar-width:thin]" data-lenis-prevent>
      {pages.map((pg, k) => (
        <button
          key={k}
          type="button"
          onClick={() => go(k)}
          aria-label={`${copy.page} ${k + 1}`}
          aria-current={k === i}
          className={`gk-noselect relative aspect-video w-28 shrink-0 overflow-hidden rounded-lg bg-white ring-2 transition sm:w-32 ${
            k === i ? 'opacity-100 ring-trigo' : 'opacity-50 ring-transparent hover:opacity-90'
          }`}
          {...noSave}
        >
          <img src={pg.thumb} alt="" draggable={false} loading="lazy" decoding="async" className="size-full object-cover" />
          <span className="absolute bottom-1 left-1.5 rounded bg-olivo/85 px-1.5 text-[0.65rem] font-semibold text-crema tabular-nums">{k + 1}</span>
        </button>
      ))}
    </div>
  );

  return (
    <div ref={root} role="region" aria-roledescription={copy.pages} aria-label={title}>
      {stage(false)}
      <div className="mt-5 flex items-center justify-between gap-4 text-crema">
        {counter}
        <button
          type="button"
          onClick={() => setOpen(true)}
          className="inline-flex items-center gap-2 rounded-lg border border-white/25 px-4 py-2 font-serif text-sm font-semibold tracking-[0.1em] uppercase transition hover:border-trigo hover:text-trigo"
        >
          <svg viewBox="0 0 16 16" className="size-3.5" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
            <path d="M2 6V2h4M14 6V2h-4M2 10v4h4M14 10v4h-4" />
          </svg>
          {copy.expand}
        </button>
      </div>
      <div className="mt-4">{strip}</div>

      <AnimatePresence>
        {open && (
          <motion.div
            className="fixed inset-0 z-[90] flex flex-col bg-sombra/97 text-crema backdrop-blur"
            role="dialog"
            aria-modal="true"
            aria-label={title}
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.35 }}
            data-lenis-prevent
          >
            <div className="flex items-center justify-between gap-4 px-4 py-3 sm:px-6">
              <p className="line-clamp-1 font-serif text-sm font-semibold tracking-[0.14em] uppercase">{title}</p>
              <div className="flex items-center gap-4">
                {counter}
                <button type="button" onClick={() => setOpen(false)} aria-label={copy.close} className="grid size-11 place-items-center rounded-full ring-1 ring-white/20 transition hover:bg-trigo hover:text-olivo">
                  <svg viewBox="0 0 16 16" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                    <path d="m3 3 10 10M13 3 3 13" />
                  </svg>
                </button>
              </div>
            </div>
            <div className="flex min-h-0 flex-1 items-center justify-center px-2 sm:px-6">{stage(true)}</div>
            <div className="px-4 pt-3 pb-4 sm:px-6">{strip}</div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
