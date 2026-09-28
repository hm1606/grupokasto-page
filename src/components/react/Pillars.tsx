import { AnimatePresence, motion } from 'motion/react';
import { useState } from 'react';
import type { Pillar } from '../../data/sustainability';
import type { Pic } from '../../lib/images';

const ease = [0.2, 0.7, 0.2, 1] as const;
const DOT: Record<Pillar['id'], string> = { ambiental: '#9dc08a', social: '#e8d45f', gobernanza: '#f7f4ec' };

/** Sostenibilidad: pestañas Ambiental / Social / Gobernanza con ámbitos de acción y objetivos estratégicos */
const TX = {
  es: { dims: 'Dimensiones ASG', scopes: 'Ámbitos de acción', objectives: 'Objetivos estratégicos' },
  en: { dims: 'ESG dimensions', scopes: 'Areas of action', objectives: 'Strategic objectives' },
};

export default function Pillars({ pillars, images, lang = 'es' }: { pillars: Pillar[]; images: Record<string, Pic>; lang?: 'es' | 'en' }) {
  const tx = TX[lang];
  const [id, setId] = useState(pillars[0].id);
  const [scope, setScope] = useState(0);
  const p = pillars.find((x) => x.id === id)!;
  const s = p.scopes[Math.min(scope, p.scopes.length - 1)];

  return (
    <div>
      <div className="flex flex-wrap gap-2" role="tablist" aria-label={tx.dims}>
        {pillars.map((x) => (
          <button
            key={x.id}
            type="button"
            role="tab"
            aria-selected={x.id === id}
            onClick={() => {
              setId(x.id);
              setScope(0);
            }}
            className={`flex items-center gap-3 rounded-full px-6 py-3 text-sm font-semibold transition-colors ${
              x.id === id ? 'bg-crema text-olivo' : 'bg-white/8 text-crema/75 hover:bg-white/15 hover:text-crema'
            }`}
          >
            <span className="size-2.5 rounded-full" style={{ background: DOT[x.id] }} />
            {x.name[lang]}
          </button>
        ))}
      </div>

      <AnimatePresence mode="wait" initial={false}>
        <motion.div
          key={id}
          className="mt-12 grid gap-10 lg:grid-cols-[1.1fr_1fr] lg:gap-16"
          initial={{ opacity: 0, y: 18 }}
          animate={{ opacity: 1, y: 0 }}
          exit={{ opacity: 0, y: -10 }}
          transition={{ duration: 0.5, ease }}
        >
          <div>
            <p className="eyebrow text-trigo">{tx.scopes} · {p.name[lang]}</p>
            <ul className="mt-6 divide-y divide-white/10 border-y border-white/10">
              {p.scopes.map((x, k) => (
                <li key={x.name.es}>
                  <button
                    type="button"
                    onClick={() => setScope(k)}
                    aria-expanded={k === scope}
                    className="flex w-full items-center justify-between gap-6 py-5 text-left"
                  >
                    <span className={`display text-2xl transition-colors sm:text-3xl ${k === scope ? 'text-crema' : 'text-crema/45 hover:text-crema/80'}`}>{x.name[lang]}</span>
                    <span className={`grid size-9 shrink-0 place-items-center rounded-full border transition-all duration-300 ${k === scope ? 'rotate-45 border-trigo text-trigo' : 'border-white/20 text-crema/50'}`}>
                      <svg viewBox="0 0 16 16" className="size-3" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                        <path d="M8 3v10M3 8h10" />
                      </svg>
                    </span>
                  </button>
                  <AnimatePresence initial={false}>
                    {k === scope && (
                      <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.45, ease }} className="overflow-hidden">
                        <p className="pb-4 text-crema/70">{x.text[lang]}</p>
                        <p className="text-[0.7rem] font-semibold tracking-[0.16em] text-brote uppercase">{tx.objectives}</p>
                        <ul className="mt-3 space-y-2 pb-6">
                          {x.objectives.map((o) => (
                            <li key={o.es} className="flex gap-3 text-[0.95rem] text-crema/85">
                              <span className="mt-2.5 h-px w-4 shrink-0 bg-trigo" aria-hidden="true" />
                              {o[lang]}
                            </li>
                          ))}
                        </ul>
                      </motion.div>
                    )}
                  </AnimatePresence>
                </li>
              ))}
            </ul>
          </div>
          <div className="relative">
            <div className="overflow-hidden rounded-[1.75rem] bg-white/5">
              {images[id] && (
                <img src={images[id].src} srcSet={images[id].srcset} sizes="(min-width: 1024px) 40vw, 100vw" alt="" loading="lazy" className="aspect-[4/3] w-full object-cover" />
              )}
            </div>
            <div className="mt-6 grid gap-3 sm:grid-cols-2">
              {p.topics.map((t) => (
                <div key={t.name.es} className="rounded-2xl bg-white/6 p-5">
                  <p className="text-[0.95rem] font-semibold text-crema">{t.name[lang]}</p>
                  <p className="mt-1.5 text-[0.85rem] leading-relaxed text-crema/60">{t.text[lang]}</p>
                </div>
              ))}
            </div>
          </div>
        </motion.div>
      </AnimatePresence>
      <span className="sr-only" aria-live="polite">
        {p.name[lang]}: {s.name[lang]}
      </span>
    </div>
  );
}
