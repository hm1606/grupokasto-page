import { AnimatePresence, motion } from 'motion/react';
import { useEffect, useRef, useState } from 'react';

type Milestone = { year: number; title: string; text: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

/** Historia: línea del tiempo con años seleccionables (flechas del teclado incluidas) */
const TX = {
  es: { step: 'Hito', of: 'de', prev: 'Hito anterior', next: 'Hito siguiente', years: 'Años' },
  en: { step: 'Milestone', of: 'of', prev: 'Previous milestone', next: 'Next milestone', years: 'Years' },
};

// Colores según el fondo: claro (nube) u oscuro (marino)
const TONE = {
  light: { accent: 'text-azul', title: 'text-marino', text: 'text-tinta/70', ghost: 'border-marino/20 text-marino hover:bg-marino hover:text-nube disabled:hover:text-marino', solid: 'bg-marino text-nube hover:bg-azul', line: 'bg-marino/15', fill: 'bg-azul', dotOn: 'border-azul bg-azul', dotPast: 'border-azul bg-nube', dotOff: 'border-marino/25 bg-nube group-hover:border-azul', yearOn: 'text-azul', yearOff: 'text-marino/45 group-hover:text-marino' },
  dark: { accent: 'text-celeste', title: 'text-nube', text: 'text-nube/70', ghost: 'border-nube/25 text-nube hover:bg-nube hover:text-marino disabled:hover:text-nube', solid: 'bg-celeste text-marino hover:bg-white', line: 'bg-nube/15', fill: 'bg-celeste', dotOn: 'border-celeste bg-celeste', dotPast: 'border-celeste bg-marino', dotOff: 'border-nube/30 bg-marino group-hover:border-celeste', yearOn: 'text-celeste', yearOff: 'text-nube/45 group-hover:text-nube' },
};

export default function Timeline({ items, lang = 'es', tone = 'light' }: { items: Milestone[]; lang?: 'es' | 'en'; tone?: 'light' | 'dark' }) {
  const tx = TX[lang];
  const c = TONE[tone];
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
              className={`display absolute bottom-0 text-[8rem] leading-none sm:text-[11rem] lg:text-[14rem] ${c.accent}`}
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
              <p className={`eyebrow ${c.accent}`}>{tx.step} {String(i + 1).padStart(2, '0')} {tx.of} {items.length}</p>
              <h3 className={`display mt-3 text-3xl sm:text-4xl ${c.title}`}>{m.title}</h3>
              <p className={`mt-4 max-w-xl text-lg leading-relaxed ${c.text}`}>{m.text}</p>
            </motion.div>
          </AnimatePresence>
          <div className="mt-8 flex gap-2">
            <button
              type="button"
              onClick={() => setI((n) => Math.max(0, n - 1))}
              disabled={i === 0}
              className={`grid size-12 place-items-center rounded-full border transition-colors disabled:opacity-30 disabled:hover:bg-transparent ${c.ghost}`}
              aria-label={tx.prev}
            >
              <svg viewBox="0 0 16 16" className="size-4 rotate-180" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
                <path d="M3 8h10m-4-4 4 4-4 4" />
              </svg>
            </button>
            <button
              type="button"
              onClick={() => setI((n) => Math.min(items.length - 1, n + 1))}
              disabled={i === items.length - 1}
              className={`grid size-12 place-items-center rounded-full transition-colors disabled:opacity-30 ${c.solid}`}
              aria-label={tx.next}
            >
              <svg viewBox="0 0 16 16" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
                <path d="M3 8h10m-4-4 4 4-4 4" />
              </svg>
            </button>
          </div>
        </div>
      </div>

      {/* Riel de años */}
      <div ref={rail} className="relative mt-14 overflow-x-auto pb-4 [scrollbar-width:none] lg:overflow-visible" role="tablist" aria-label={tx.years}>
        <div className="relative flex min-w-max gap-2 lg:block lg:h-20 lg:min-w-0">
          <div className={`absolute inset-x-0 top-[1.2rem] hidden h-px lg:block ${c.line}`} aria-hidden="true" />
          <motion.div
            className={`absolute top-[1.2rem] left-0 hidden h-px lg:block ${c.fill}`}
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
                  k === i ? `scale-125 ${c.dotOn}` : k < i ? c.dotPast : c.dotOff
                }`}
                style={{ marginTop: '0.82rem' }}
              />
              <span className={`text-sm font-semibold tabular-nums transition-colors ${k === i ? c.yearOn : c.yearOff}`}>{it.year}</span>
            </button>
          ))}
        </div>
      </div>
    </div>
  );
}
