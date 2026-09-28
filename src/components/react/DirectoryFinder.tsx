import { AnimatePresence, motion } from 'motion/react';
import { useState } from 'react';

type Network = 'web' | 'facebook' | 'instagram' | 'x' | 'linkedin' | 'youtube' | 'pinterest';

export type Place = {
  /** Nombre grande (empresa u oficina) */
  title: string;
  /** Planta, oficina o división (opcional) */
  subtitle?: string;
  lines: string[];
  phones: string[];
  email?: string;
  web?: string;
  social?: { network: Network; url: string }[];
  /** Lo que se busca en Google Maps (empresa + domicilio) */
  query: string;
};

type Labels = { directions: string; website: string; mapOf: string; call: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

const tel = (p: string) => `tel:+52${p.replace(/\D/g, '').slice(-10)}`;
const embed = (q: string) => `https://maps.google.com/maps?q=${encodeURIComponent(q)}&z=15&output=embed`;
const directions = (q: string) => `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(q)}`;
const host = (u: string) => new URL(u).hostname.replace(/^www\./, '');
/** Ciudad para la línea breve (si la última línea es solo el C.P., se une con la anterior) */
const where = (lines: string[]) => (/^C\.P\./.test(lines[lines.length - 1]) ? lines.slice(-2).join(' ') : lines[lines.length - 1]);

const ICONS: Record<Network, string> = {
  web: 'M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM3 12h18M12 3a14 14 0 0 1 0 18M12 3a14 14 0 0 0 0 18',
  facebook: 'M14 8h3V4h-3a4 4 0 0 0-4 4v2H7v4h3v7h4v-7h3l1-4h-4V8Z',
  instagram: 'M8.5 3.5h7a5 5 0 0 1 5 5v7a5 5 0 0 1-5 5h-7a5 5 0 0 1-5-5v-7a5 5 0 0 1 5-5ZM12 16a4 4 0 1 0 0-8 4 4 0 0 0 0 8ZM17.3 6.7v.01',
  x: 'm4 4 16 16M20 4 4 20',
  linkedin: 'M6.5 3.5h11a3 3 0 0 1 3 3v11a3 3 0 0 1-3 3h-11a3 3 0 0 1-3-3v-11a3 3 0 0 1 3-3ZM8 10.5V16M8 7.8v.01M11.5 16v-5.5M11.5 13c0-1.7 1-2.7 2.4-2.7 1.4 0 2.1 1 2.1 2.7V16',
  youtube: 'M6.5 5.5h11a4 4 0 0 1 4 4v5a4 4 0 0 1-4 4h-11a4 4 0 0 1-4-4v-5a4 4 0 0 1 4-4ZM10 9l5 3-5 3V9Z',
  pinterest: 'M12 21a9 9 0 1 0 0-18 9 9 0 0 0 0 18ZM11 8.5c3-1 5 .5 5 2.8 0 2.4-1.6 4.2-3.5 4.2-1.2 0-1.8-.8-1.8-.8L9.5 20',
};
const NAMES: Record<Network, string> = { web: 'Web', facebook: 'Facebook', instagram: 'Instagram', x: 'X', linkedin: 'LinkedIn', youtube: 'YouTube', pinterest: 'Pinterest' };

/** Directorio con mapa: al elegir una empresa se muestra en Google Maps con todos sus datos. */
export default function DirectoryFinder({ places, labels }: { places: Place[]; labels: Labels }) {
  const [sel, setSel] = useState(0);
  const p = places[sel];

  return (
    <div className="grid gap-8 lg:grid-cols-[minmax(0,1fr)_minmax(0,1.2fr)] lg:gap-12">
      <ul className="border-t border-olivo/12">
        {places.map((pl, i) => {
          const on = i === sel;
          return (
            <li key={pl.title + (pl.subtitle ?? '')} className="border-b border-olivo/12">
              <button type="button" onClick={() => setSel(i)} aria-pressed={on} className="group flex w-full items-center gap-5 py-5 text-left">
                <span className={`font-serif text-lg font-semibold tabular-nums transition-colors ${on ? 'text-hoja' : 'text-olivo/30 group-hover:text-hoja/70'}`}>
                  {String(i + 1).padStart(2, '0')}
                </span>
                <span className="flex-1">
                  {pl.subtitle && <span className="eyebrow block text-hoja">{pl.subtitle}</span>}
                  <span className={`display block text-[1.65rem] leading-tight transition-colors ${on ? 'text-olivo' : 'text-olivo/55 group-hover:text-olivo'}`}>{pl.title}</span>
                  <span className="mt-1 block text-sm text-niebla">{where(pl.lines)}</span>
                </span>
                <span
                  className={`grid size-10 shrink-0 place-items-center rounded-full border transition-colors ${on ? 'border-hoja bg-hoja text-white' : 'border-olivo/15 text-olivo/45 group-hover:border-hoja'}`}
                  aria-hidden="true"
                >
                  <svg viewBox="0 0 24 24" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round">
                    <path d="M12 21s-7-6.2-7-11.5A7 7 0 0 1 19 9.5C19 14.8 12 21 12 21Z" />
                    <circle cx="12" cy="9.5" r="2.5" />
                  </svg>
                </span>
              </button>
              <AnimatePresence initial={false}>
                {on && (
                  <motion.div
                    initial={{ height: 0, opacity: 0 }}
                    animate={{ height: 'auto', opacity: 1 }}
                    exit={{ height: 0, opacity: 0 }}
                    transition={{ duration: 0.5, ease }}
                    className="overflow-hidden"
                  >
                    <div className="pb-6 pl-11">
                      <address className="leading-relaxed text-tinta/75 not-italic">
                        {pl.lines.map((l) => (
                          <span key={l} className="block">
                            {l}
                          </span>
                        ))}
                      </address>
                      <div className="mt-4 flex flex-wrap gap-2">
                        {pl.phones.map((ph) => (
                          <a
                            key={ph}
                            href={tel(ph)}
                            aria-label={`${labels.call} ${ph}`}
                            className="inline-flex items-center gap-2 rounded-lg bg-white px-4 py-2.5 text-sm font-semibold text-olivo ring-1 ring-olivo/10 transition-colors hover:bg-hoja hover:text-white hover:ring-hoja"
                          >
                            <svg viewBox="0 0 24 24" className="size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                              <path d="M5 4h4l2 5-2.5 1.5a11 11 0 0 0 5 5L15 13l5 2v4a2 2 0 0 1-2 2A16 16 0 0 1 3 6a2 2 0 0 1 2-2" />
                            </svg>
                            {ph}
                          </a>
                        ))}
                        {pl.email && (
                          <a href={`mailto:${pl.email}`} className="inline-flex items-center gap-2 rounded-lg bg-white px-4 py-2.5 text-sm font-semibold text-olivo ring-1 ring-olivo/10 transition-colors hover:bg-hoja hover:text-white hover:ring-hoja">
                            <svg viewBox="0 0 24 24" className="size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                              <rect x="3" y="5" width="18" height="14" rx="2" />
                              <path d="m3 7 9 6 9-6" />
                            </svg>
                            {pl.email}
                          </a>
                        )}
                        <a
                          href={directions(pl.query)}
                          target="_blank"
                          rel="noopener"
                          className="inline-flex items-center gap-2 rounded-lg border border-olivo/15 px-4 py-2.5 text-sm font-semibold text-olivo transition-colors hover:border-hoja hover:bg-hoja hover:text-white"
                        >
                          {labels.directions}
                          <svg viewBox="0 0 24 24" className="size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" aria-hidden="true">
                            <path d="M7 17 17 7M9 7h8v8" />
                          </svg>
                        </a>
                      </div>
                      {(pl.web || pl.social?.length) && (
                        <div className="mt-4 flex flex-wrap items-center gap-2">
                          {pl.web && (
                            <a href={pl.web} target="_blank" rel="noopener" className="link-line mr-2 text-sm font-semibold text-hoja" aria-label={`${labels.website}: ${host(pl.web)}`}>
                              {host(pl.web)} ↗
                            </a>
                          )}
                          {pl.social?.map((s) => (
                            <a
                              key={s.url}
                              href={s.url}
                              target="_blank"
                              rel="noopener"
                              aria-label={NAMES[s.network]}
                              title={NAMES[s.network]}
                              className="grid size-9 place-items-center rounded-full border border-olivo/15 text-olivo transition-colors hover:border-hoja hover:bg-hoja hover:text-white"
                            >
                              <svg viewBox="0 0 24 24" className="size-4" fill="none" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" aria-hidden="true">
                                <path d={ICONS[s.network]} />
                              </svg>
                            </a>
                          ))}
                        </div>
                      )}
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>
            </li>
          );
        })}
      </ul>

      {/* Mapa */}
      <div className="relative min-h-[400px] overflow-hidden rounded-[2rem] bg-gris shadow-[0_40px_80px_-50px_rgba(64,74,61,.8)] ring-1 ring-olivo/8 lg:sticky lg:top-40 lg:h-[600px]">
        <AnimatePresence mode="wait">
          <motion.iframe
            key={p.query}
            title={`${labels.mapOf} ${p.title}`}
            src={embed(p.query)}
            loading="lazy"
            referrerPolicy="no-referrer-when-downgrade"
            className="absolute inset-0 h-full w-full border-0 grayscale-[40%] sepia-[15%]"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.5 }}
          />
        </AnimatePresence>
        <div className="pointer-events-none absolute top-4 left-4 max-w-[80%] rounded-2xl bg-crema/95 px-5 py-4 shadow-lg backdrop-blur">
          {p.subtitle && <p className="eyebrow text-hoja">{p.subtitle}</p>}
          <p className="display mt-1 text-2xl leading-tight text-olivo">{p.title}</p>
          <p className="mt-1 text-sm text-niebla">{where(p.lines)}</p>
        </div>
      </div>
    </div>
  );
}
