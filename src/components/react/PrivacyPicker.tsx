import { AnimatePresence, motion } from 'motion/react';
import { useEffect, useMemo, useState } from 'react';
import type { PrivacyCompany } from '../../data/privacy';

/**
 * Selector de empresa del aviso de privacidad: el texto legal es común; aquí cambia el responsable.
 * Recuerda la empresa en la URL (#empresa) para poder compartir el aviso de una empresa en particular.
 */
export default function PrivacyPicker({ companies }: { companies: PrivacyCompany[] }) {
  const [id, setId] = useState(companies[0].id);
  const current = companies.find((c) => c.id === id) ?? companies[0];

  useEffect(() => {
    const fromHash = location.hash.slice(1);
    if (companies.some((c) => c.id === fromHash)) setId(fromHash);
  }, [companies]);

  const pick = (next: string) => {
    setId(next);
    history.replaceState(null, '', `#${next}`);
  };

  const groups = useMemo(() => {
    const m = new Map<string, PrivacyCompany[]>();
    for (const c of companies) m.set(c.division, [...(m.get(c.division) ?? []), c]);
    return [...m.entries()];
  }, [companies]);

  return (
    <div className="grid gap-8 lg:grid-cols-[1fr_1.1fr] lg:gap-12">
      <div>
        <label htmlFor="pp-company" className="eyebrow text-hoja">
          Elige la empresa
        </label>
        <div className="relative mt-3 lg:hidden">
          <select
            id="pp-company"
            value={id}
            onChange={(e) => pick(e.target.value)}
            className="w-full appearance-none rounded-2xl border border-olivo/15 bg-white px-5 py-4 pr-12 text-base font-semibold text-olivo outline-none focus:border-hoja"
          >
            {groups.map(([division, list]) => (
              <optgroup key={division} label={division}>
                {list.map((c) => (
                  <option key={c.id} value={c.id}>
                    {c.name}
                  </option>
                ))}
              </optgroup>
            ))}
          </select>
          <svg viewBox="0 0 12 12" className="pointer-events-none absolute top-1/2 right-5 size-3 -translate-y-1/2" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
            <path d="m3 4.5 3 3 3-3" />
          </svg>
        </div>
        <div className="mt-5 hidden max-h-[34rem] space-y-6 overflow-y-auto pr-3 lg:block" data-lenis-prevent>
          {groups.map(([division, list]) => (
            <div key={division}>
              <p className="text-[0.72rem] font-semibold tracking-[0.14em] text-niebla uppercase">{division}</p>
              <ul className="mt-2 space-y-1">
                {list.map((c) => (
                  <li key={c.id}>
                    <button
                      type="button"
                      onClick={() => pick(c.id)}
                      aria-pressed={c.id === id}
                      className={`w-full rounded-xl px-4 py-2.5 text-left text-[0.92rem] transition-colors ${
                        c.id === id ? 'bg-olivo font-semibold text-crema' : 'text-tinta/75 hover:bg-gris'
                      }`}
                    >
                      {c.name}
                    </button>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>
      </div>

      <div className="lg:sticky lg:top-28 lg:self-start">
        <div className="relative overflow-hidden rounded-[2rem] bg-olivo p-8 text-crema sm:p-10">
          <p className="eyebrow text-trigo">Responsable de tus datos</p>
          <AnimatePresence mode="wait" initial={false}>
            <motion.div key={current.id} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -6 }} transition={{ duration: 0.35 }} aria-live="polite">
              <p className="display mt-4 text-3xl">{current.name}</p>
              <address className="mt-5 leading-relaxed text-crema/75 not-italic">
                {current.address.map((l) => (
                  <span key={l} className="block">
                    {l}
                  </span>
                ))}
              </address>
              <p className="mt-4 text-crema/75">
                {current.phones.length > 1 ? 'Teléfonos' : 'Teléfono'}: {current.phones.join(' · ')}
              </p>
              {current.web && <p className="mt-1 text-crema/75">{current.web}</p>}
            </motion.div>
          </AnimatePresence>
          <div className="mt-8 border-t border-white/15 pt-6 text-sm leading-relaxed text-crema/70">
            Para ejercer tus derechos ARCO escribe a{' '}
            <a href="mailto:datospersonales@grupokasto.com" className="font-semibold text-trigo underline decoration-trigo/40 underline-offset-4">
              datospersonales@grupokasto.com
            </a>
            .
          </div>
        </div>
      </div>
    </div>
  );
}
