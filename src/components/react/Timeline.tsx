import { AnimatePresence, motion } from 'motion/react';
import { useEffect, useRef, useState } from 'react';

type Milestone = { year: number; title: string; text: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

/** Historia: línea del tiempo con años seleccionables (flechas del teclado incluidas) */
export default function Timeline({ items }: { items: Milestone[] }) {
  const [i, setI] = useState(0);
  const rail = useRef<HTMLDivElement>(null);
  const m = items[i];

  // Mantiene visible el año activo en el riel (celular)
  useEffect(() => {
    const el = rail.current?.querySelector<HTMLElement>(`[data-k="${i}"]`);
    el?.scrollIntoView({ behavior: 'smooth', inline: 'center', block: 'nearest' });
  }, [i]);

  const onKey = (e: React.KeyboardEvent) => {
    if (e.key === 'ArrowRight') setI((n) => Math.min(items.length - 1, n + 1));
    if (e.key === 'ArrowLeft') setI((n) => Math.max(0, n - 1));
  };

  return (
    <div onKeyDown={onKey}>
      <div className="grid items-end gap-10 lg:grid-cols-[1fr_1.2fr]">
        <div className="relative h-[9rem] overflow-hidden sm:h-[12rem] lg:h-[15rem]" aria-live="polite">
          <AnimatePresence mode="popLayout" initial={false}>
            <motion.p
              key={m.year}
              className="display absolute bottom-0 text-[8rem] leading-none text-hoja sm:text-[11rem] lg:text-[14rem]"
              initial={{ y: '100%', opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              exit={{ y: '-60%', opacity: 0 }}
              transition={{ duration: 0.8, ease }}
            >
              {m.year}
            </motion.p>
          </AnimatePresence>
        </div>
        <div className="min-h-[10rem] lg:pb-6">
          <AnimatePresence mode="wait" initial={false}>
            <motion.div key={m.year} initial={{ opacity: 0, y: 14 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -10 }} transition={{ duration: 0.45, ease }}>
              <p className="eyebrow text-oro">Hito {String(i + 1).padStart(2, '0')} de {items.length}</p>
              <h3 className="display mt-3 text-3xl text-bosque sm:text-4xl">{m.title}</h3>
              <p className="mt-4 max-w-xl text-lg leading-relaxed text-tinta/70">{m.text}</p>
            </motion.div>
          </AnimatePresence>
          <div className="mt-8 flex gap-2">
            <button
              type="button"
              onClick={() => setI((n) => Math.max(0, n - 1))}
              disabled={i === 0}
              className="grid size-12 place-items-center rounded-full border border-bosque/20 text-bosque transition-colors hover:bg-bosque hover:text-harina disabled:opacity-30 disabled:hover:bg-transparent disabled:hover:text-bosque"
              aria-label="Hito anterior"
            >
              <svg viewBox="0 0 16 16" className="size-4 rotate-180" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
                <path d="M3 8h10m-4-4 4 4-4 4" />
              </svg>
            </button>
            <button
              type="button"
              onClick={() => setI((n) => Math.min(items.length - 1, n + 1))}
              disabled={i === items.length - 1}
              className="grid size-12 place-items-center rounded-full bg-bosque text-harina transition-colors hover:bg-hoja disabled:opacity-30"
              aria-label="Hito siguiente"
            >
              <svg viewBox="0 0 16 16" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
                <path d="M3 8h10m-4-4 4 4-4 4" />
              </svg>
            </button>
          </div>
        </div>
      </div>

      {/* Riel de años */}
      <div ref={rail} className="relative mt-14 overflow-x-auto pb-4 [scrollbar-width:none] lg:overflow-visible" role="tablist" aria-label="Años">
        <div className="relative flex min-w-max gap-2 lg:block lg:h-20 lg:min-w-0">
          <div className="absolute inset-x-0 top-[1.2rem] hidden h-px bg-bosque/15 lg:block" aria-hidden="true" />
          <motion.div
            className="absolute top-[1.2rem] left-0 hidden h-px bg-hoja lg:block"
            animate={{ width: `${(i / (items.length - 1)) * 100}%` }}
            transition={{ duration: 0.8, ease }}
            aria-hidden="true"
          />
          {items.map((it, k) => (
            <button
              key={it.year}
              data-k={k}
              type="button"
              role="tab"
              aria-selected={k === i}
              onClick={() => setI(k)}
              className="group relative flex shrink-0 flex-col items-center gap-2 rounded-full px-3 py-2 lg:absolute lg:top-0 lg:-translate-x-1/2 lg:px-0"
              style={{ left: `${(k / (items.length - 1)) * 100}%` }}
            >
              <span
                className={`hidden size-3 rounded-full border-2 transition-all duration-300 lg:block ${
                  k === i ? 'scale-125 border-hoja bg-hoja' : k < i ? 'border-hoja bg-harina' : 'border-bosque/25 bg-harina group-hover:border-hoja'
                }`}
                style={{ marginTop: '0.82rem' }}
              />
              <span className={`text-sm font-semibold tabular-nums transition-colors ${k === i ? 'text-hoja' : 'text-bosque/45 group-hover:text-bosque'}`}>{it.year}</span>
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}
