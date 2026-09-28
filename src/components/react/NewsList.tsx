import { AnimatePresence, motion } from 'motion/react';
import { useMemo, useState } from 'react';
import type { Pic } from '../../lib/images';

export type NewsCard = {
  slug: string;
  href: string;
  title: string;
  excerpt: string;
  category: string;
  categoryLabel: string;
  date: string;
  dateLabel: string;
  year: number;
  minutes: number;
  image: Pic;
};

type Labels = { all: string; search: string; empty: string; minRead: string; archive: string; story: string; stories: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

/** Archivo de noticias: filtro por categoría, búsqueda y agrupado por año con el año fijo al hacer scroll. */
export default function NewsList({ items, labels }: { items: NewsCard[]; labels: Labels }) {
  const categories = useMemo(() => {
    const seen = new Map<string, string>();
    for (const n of items) seen.set(n.category, n.categoryLabel);
    return [['', labels.all], ...seen.entries()] as [string, string][];
  }, [items, labels.all]);
  const [cat, setCat] = useState('');
  const [q, setQ] = useState('');

  const norm = (s: string) => s.normalize('NFD').replace(/\p{Diacritic}/gu, '').toLowerCase();
  const list = items.filter((n) => (!cat || n.category === cat) && (!q || norm(`${n.title} ${n.excerpt}`).includes(norm(q))));
  const years = [...new Set(list.map((n) => n.year))];

  return (
    <div>
      <div className="news-filter sticky top-3 z-20 -mx-2 flex flex-col gap-4 rounded-2xl bg-crema/90 p-2 backdrop-blur-xl lg:flex-row lg:items-center lg:justify-between">
        <div className="flex gap-2 overflow-x-auto [scrollbar-width:none] lg:flex-wrap" role="tablist" aria-label={labels.archive}>
          {categories.map(([id, label]) => (
            <button
              key={id || 'all'}
              type="button"
              role="tab"
              aria-selected={id === cat}
              onClick={() => setCat(id)}
              className={`shrink-0 rounded-lg px-4 py-2 font-serif text-[0.95rem] font-semibold tracking-[0.06em] uppercase transition-colors ${
                id === cat ? 'bg-olivo text-crema' : 'bg-gris text-olivo/70 hover:text-olivo'
              }`}
            >
              {label}
            </button>
          ))}
        </div>
        <label className="relative block lg:w-72">
          <span className="sr-only">{labels.search}</span>
          <svg viewBox="0 0 24 24" className="pointer-events-none absolute top-1/2 left-4 size-4 -translate-y-1/2 text-niebla" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
            <circle cx="11" cy="11" r="7" />
            <path d="m20 20-3.5-3.5" />
          </svg>
          <input
            type="search"
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder={labels.search}
            className="w-full rounded-lg border border-olivo/15 bg-white py-2.5 pr-4 pl-11 text-sm outline-none focus:border-hoja"
          />
        </label>
      </div>

      <div className="mt-12 space-y-16">
        <AnimatePresence mode="popLayout" initial={false}>
          {years.map((year) => (
            <motion.section
              key={year}
              layout
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.5, ease }}
              className="grid gap-8 border-t border-olivo/15 pt-8 lg:grid-cols-[11rem_1fr] lg:gap-12"
            >
              <div>
                <p className="display text-7xl text-hoja lg:sticky lg:top-28">{year}</p>
                <p className="mt-1 text-sm text-niebla">
                  {(() => {
                    const count = list.filter((n) => n.year === year).length;
                    return `${count} ${count === 1 ? labels.story : labels.stories}`;
                  })()}
                </p>
              </div>
              <ul className="grid gap-x-6 gap-y-10 sm:grid-cols-2 xl:grid-cols-3">
                {list
                  .filter((n) => n.year === year)
                  .map((n) => (
                    <motion.li key={n.slug} layout initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} transition={{ duration: 0.4, ease }}>
                      <a href={n.href} className="group block">
                        <div className="zoom relative aspect-[4/3] overflow-hidden rounded-xl bg-gris">
                          <img src={n.image.src} srcSet={n.image.srcset} sizes="(min-width: 1280px) 22vw, (min-width: 640px) 42vw, 100vw" alt="" loading="lazy" className="size-full object-cover" />
                          <span className="absolute top-3 left-3 rounded-md bg-crema/95 px-2.5 py-1 font-serif text-[0.78rem] font-semibold tracking-[0.08em] text-hoja uppercase">
                            {n.categoryLabel}
                          </span>
                        </div>
                        <p className="mt-4 flex items-center gap-2 text-[0.8rem] text-niebla">
                          <time dateTime={n.date}>{n.dateLabel}</time>
                          <span aria-hidden="true">·</span>
                          <span>
                            {n.minutes} {labels.minRead}
                          </span>
                        </p>
                        <h3 className="display mt-2 text-[1.6rem] leading-[1.08] text-olivo transition-colors group-hover:text-hoja">{n.title}</h3>
                        <p className="mt-2 line-clamp-2 text-[0.95rem] leading-relaxed text-tinta/65">{n.excerpt}</p>
                      </a>
                    </motion.li>
                  ))}
              </ul>
            </motion.section>
          ))}
        </AnimatePresence>
      </div>
      {!list.length && <p className="py-20 text-center text-niebla">{labels.empty}</p>}
    </div>
  );
}
