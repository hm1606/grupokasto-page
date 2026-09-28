import { AnimatePresence, motion } from 'motion/react';
import { useMemo, useState } from 'react';
import type { Pic } from '../../lib/images';

export type NewsCard = { slug: string; title: string; excerpt: string; category: string; date: string; dateLabel: string; image: Pic };
const ease = [0.2, 0.7, 0.2, 1] as const;

/** Listado de noticias con filtro por categoría y búsqueda */
export default function NewsList({ items }: { items: NewsCard[] }) {
  const categories = useMemo(() => ['Todas', ...new Set(items.map((n) => n.category))], [items]);
  const [cat, setCat] = useState('Todas');
  const [q, setQ] = useState('');

  const norm = (s: string) => s.normalize('NFD').replace(/\p{Diacritic}/gu, '').toLowerCase();
  const list = items.filter((n) => (cat === 'Todas' || n.category === cat) && (!q || norm(`${n.title} ${n.excerpt}`).includes(norm(q))));

  return (
    <div>
      <div className="flex flex-col gap-5 border-b border-bosque/10 pb-8 lg:flex-row lg:items-center lg:justify-between">
        <div className="-mx-5 flex gap-2 overflow-x-auto px-5 pb-1 [scrollbar-width:none] lg:mx-0 lg:flex-wrap lg:px-0" role="tablist" aria-label="Categorías">
          {categories.map((c) => (
            <button
              key={c}
              type="button"
              role="tab"
              aria-selected={c === cat}
              onClick={() => setCat(c)}
              className={`shrink-0 rounded-full px-4 py-2 text-[0.82rem] font-semibold transition-colors ${
                c === cat ? 'bg-bosque text-harina' : 'bg-arena/70 text-bosque/75 hover:bg-arena hover:text-bosque'
              }`}
            >
              {c}
            </button>
          ))}
        </div>
        <label className="relative block lg:w-72">
          <span className="sr-only">Buscar noticias</span>
          <svg viewBox="0 0 24 24" className="pointer-events-none absolute top-1/2 left-4 size-4 -translate-y-1/2 text-niebla" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
            <circle cx="11" cy="11" r="7" />
            <path d="m20 20-3.5-3.5" />
          </svg>
          <input
            type="search"
            value={q}
            onChange={(e) => setQ(e.target.value)}
            placeholder="Buscar noticias"
            className="w-full rounded-full border border-bosque/15 bg-white/70 py-2.5 pr-4 pl-11 text-sm outline-none focus:border-hoja focus:bg-white"
          />
        </label>
      </div>

      <motion.ul layout className="mt-10 grid gap-x-6 gap-y-12 sm:grid-cols-2 lg:grid-cols-3">
        <AnimatePresence mode="popLayout">
          {list.map((n) => (
            <motion.li
              key={n.slug}
              layout
              initial={{ opacity: 0, y: 20 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, scale: 0.97 }}
              transition={{ duration: 0.5, ease }}
            >
              <a href={`/noticias/${n.slug}/`} className="group block">
                <div className="zoom aspect-[4/3] overflow-hidden rounded-2xl bg-arena">
                  <img src={n.image.src} srcSet={n.image.srcset} sizes="(min-width: 1024px) 30vw, (min-width: 640px) 45vw, 100vw" alt="" loading="lazy" className="size-full object-cover" />
                </div>
                <p className="mt-5 flex items-center gap-3 text-[0.75rem] font-semibold text-niebla">
                  <span className="rounded-full bg-hoja/12 px-2.5 py-1 text-hoja">{n.category}</span>
                  <time dateTime={n.date}>{n.dateLabel}</time>
                </p>
                <h3 className="mt-3 font-serif text-[1.45rem] leading-snug text-bosque transition-colors group-hover:text-hoja">{n.title}</h3>
                <p className="mt-2 line-clamp-2 text-[0.95rem] leading-relaxed text-tinta/65">{n.excerpt}</p>
              </a>
            </motion.li>
          ))}
        </AnimatePresence>
      </motion.ul>
      {!list.length && <p className="py-20 text-center text-niebla">No encontramos noticias con esos filtros.</p>}
    </div>
  );
}
