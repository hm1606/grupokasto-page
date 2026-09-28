import { AnimatePresence, motion } from 'motion/react';
import { useState } from 'react';
import type { Pic } from '../../lib/images';

export type DivisionCard = {
  slug: string;
  name: string;
  short: string;
  summary: string;
  region: string;
  image: Pic;
  highlight: { value: string; label: string };
};

const ease = [0.2, 0.7, 0.2, 1] as const;

/** Portada: lista de divisiones; al pasar el mouse (o tocar) cambia la foto grande y el resumen. */
export default function DivisionsExplorer({ items }: { items: DivisionCard[] }) {
  const [active, setActive] = useState(0);
  const d = items[active];

  return (
    <div className="grid gap-10 lg:grid-cols-[1fr_1.15fr] lg:gap-16">
      <ol className="flex flex-col" onMouseLeave={() => undefined}>
        {items.map((it, k) => (
          <li key={it.slug} className="border-b border-olivo/12 first:border-t">
            <a
              href={`/divisiones/${it.slug}/`}
              onMouseEnter={() => setActive(k)}
              onFocus={() => setActive(k)}
              className="group flex items-center gap-5 py-5 lg:py-6"
              aria-describedby={k === active ? 'division-activa' : undefined}
            >
              <span className={`font-serif text-sm tabular-nums transition-colors ${k === active ? 'text-hoja' : 'text-olivo/35'}`}>
                {String(k + 1).padStart(2, '0')}
              </span>
              <span
                className={`display flex-1 text-[1.9rem] transition-[color,transform] duration-500 sm:text-4xl lg:text-[2.6rem] ${
                  k === active ? 'translate-x-2 text-olivo' : 'text-olivo/45 group-hover:text-olivo/80'
                }`}
              >
                {it.short}
              </span>
              <span
                className={`grid size-11 shrink-0 place-items-center rounded-full border transition-all duration-500 ${
                  k === active ? 'border-hoja bg-hoja text-white' : 'border-olivo/15 text-olivo/40'
                }`}
                aria-hidden="true"
              >
                <svg viewBox="0 0 16 16" className="size-3.5 -rotate-45" fill="none" stroke="currentColor" strokeWidth="1.8">
                  <path d="M3 8h10m-4-4 4 4-4 4" />
                </svg>
              </span>
            </a>
            {/* En celular, la foto y el resumen se muestran bajo la división activa */}
            <AnimatePresence initial={false}>
              {k === active && (
                <motion.div
                  className="overflow-hidden lg:hidden"
                  initial={{ height: 0, opacity: 0 }}
                  animate={{ height: 'auto', opacity: 1 }}
                  exit={{ height: 0, opacity: 0 }}
                  transition={{ duration: 0.6, ease }}
                >
                  <div className="pb-6">
                    <img
                      src={it.image.src}
                      srcSet={it.image.srcset}
                      sizes="100vw"
                      alt=""
                      loading="lazy"
                      className="aspect-[16/10] w-full rounded-2xl object-cover"
                    />
                    <p className="mt-4 text-base leading-relaxed text-tinta/70">{it.summary}</p>
                  </div>
                </motion.div>
              )}
            </AnimatePresence>
          </li>
        ))}
      </ol>

      <div className="relative hidden lg:block">
        <div className="sticky top-28">
          <div className="relative aspect-[4/5] overflow-hidden rounded-[2rem] bg-olivo">
            <AnimatePresence initial={false}>
              <motion.img
                key={d.slug}
                src={d.image.src}
                srcSet={d.image.srcset}
                sizes="(min-width: 1024px) 45vw, 100vw"
                alt=""
                loading="lazy"
                className="absolute inset-0 size-full object-cover"
                initial={{ opacity: 0, scale: 1.08 }}
                animate={{ opacity: 1, scale: 1 }}
                exit={{ opacity: 0 }}
                transition={{ duration: 0.9, ease }}
              />
            </AnimatePresence>
            <div className="absolute inset-0 bg-gradient-to-t from-olivo/90 via-olivo/10 to-transparent" />
            <div id="division-activa" className="absolute inset-x-0 bottom-0 p-9 text-white">
              <AnimatePresence mode="wait" initial={false}>
                <motion.div
                  key={d.slug}
                  initial={{ opacity: 0, y: 16 }}
                  animate={{ opacity: 1, y: 0 }}
                  exit={{ opacity: 0, y: -8 }}
                  transition={{ duration: 0.45, ease }}
                >
                  <p className="eyebrow text-trigo">{d.region}</p>
                  <p className="mt-3 max-w-md text-xl leading-snug">{d.summary}</p>
                  <div className="mt-6 flex items-end justify-between gap-6 border-t border-white/20 pt-5">
                    <p>
                      <span className="display block text-4xl text-trigo">{d.highlight.value}</span>
                      <span className="text-sm text-white/70">{d.highlight.label}</span>
                    </p>
                    <a href={`/divisiones/${d.slug}/`} className="btn btn-outline-light min-h-11 px-5 text-[0.7rem]">
                      Ver división
                    </a>
                  </div>
                </motion.div>
              </AnimatePresence>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
