import { motion, useReducedMotion, useScroll, useSpring, useTransform } from 'motion/react';
import { useLayoutEffect, useRef, useState } from 'react';
import type { Pic } from '../../lib/images';

export type DivisionCard = {
  slug: string;
  href: string;
  name: string;
  short: string;
  summary: string;
  region: string;
  image: Pic;
  highlight: { value: string; label: string };
};

type Copy = { eyebrow: string; title: string; text: string; cta: string; all: string; allHref: string; hint: string; swipe: string };

/**
 * Portada: las ocho divisiones en un recorrido horizontal. En escritorio la sección se queda fija y las tarjetas
 * avanzan de lado mientras se baja; en celular es un carrusel que se desliza con el dedo.
 */
export default function DivisionsRail({ items, copy }: { items: DivisionCard[]; copy: Copy }) {
  const reduce = useReducedMotion();
  const section = useRef<HTMLElement>(null);
  const track = useRef<HTMLDivElement>(null);
  const [distance, setDistance] = useState(0);
  const [pinned, setPinned] = useState(false);

  // Cuánto hay que recorrer de lado = ancho de la pista - ancho de la pantalla
  useLayoutEffect(() => {
    const mq = window.matchMedia('(min-width: 1024px)');
    const measure = () => {
      const on = mq.matches && !reduce;
      setPinned(on);
      if (on && track.current) setDistance(Math.max(0, track.current.scrollWidth - window.innerWidth));
    };
    measure();
    const ro = new ResizeObserver(measure);
    if (track.current) ro.observe(track.current);
    mq.addEventListener('change', measure);
    window.addEventListener('resize', measure);
    return () => {
      ro.disconnect();
      mq.removeEventListener('change', measure);
      window.removeEventListener('resize', measure);
    };
  }, [reduce]);

  const { scrollYProgress } = useScroll({ target: section, offset: ['start start', 'end end'] });
  const smooth = useSpring(scrollYProgress, { stiffness: 120, damping: 28, mass: 0.35 });
  const x = useTransform(smooth, (v) => -v * distance);
  const bar = useTransform(smooth, [0, 1], [0, 1]);

  return (
    <section
      ref={section}
      className="relative bg-sombra text-crema"
      style={pinned ? { height: `calc(100svh + ${distance}px)` } : undefined}
      aria-labelledby="divisiones-titulo"
    >
      <div className={pinned ? 'sticky top-0 flex h-[100svh] flex-col justify-center overflow-hidden' : 'overflow-hidden py-24'}>
        <div className="surcos-claro pointer-events-none absolute inset-0" aria-hidden="true" />
        <motion.div
          ref={track}
          className={`relative flex items-stretch gap-5 px-5 sm:px-8 lg:gap-6 lg:px-12 ${
            pinned ? 'w-max' : 'snap-x snap-mandatory overflow-x-auto overscroll-x-contain pb-6 [scrollbar-width:none]'
          }`}
          style={pinned ? { x } : undefined}
        >
          {/* Primera "tarjeta": el título de la sección */}
          <div className="flex w-[82vw] shrink-0 snap-start flex-col justify-between py-2 sm:w-[26rem] lg:w-[30rem] lg:py-6">
            <div>
              <p className="eyebrow flex items-center gap-3 text-trigo">
                <span className="h-px w-8 bg-trigo/60" aria-hidden="true" />
                {copy.eyebrow}
              </p>
              <h2 id="divisiones-titulo" className="display mt-6 text-5xl text-balance sm:text-6xl lg:text-7xl" dangerouslySetInnerHTML={{ __html: copy.title }} />
              <p className="mt-8 max-w-sm text-lg leading-relaxed text-crema/70">{copy.text}</p>
            </div>
            <div className="mt-10 flex flex-col items-start gap-6">
              <a href={copy.allHref} className="btn btn-trigo group">
                {copy.all}
                <svg viewBox="0 0 16 16" className="arrow size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                  <path d="M3 8h10m-4-4 4 4-4 4" />
                </svg>
              </a>
              <p className="flex items-center gap-3 text-sm text-crema/50" aria-hidden="true">
                <span className={`rail-hint grid size-9 place-items-center rounded-full border border-crema/20 ${pinned ? '' : '-rotate-90'}`}>
                  <svg viewBox="0 0 16 16" className="size-3.5" fill="none" stroke="currentColor" strokeWidth="1.6">
                    <path d="M8 3v10m-4-4 4 4 4-4" />
                  </svg>
                </span>
                {pinned ? copy.hint : copy.swipe}
              </p>
            </div>
          </div>

          {items.map((d, k) => (
            <a
              key={d.slug}
              href={d.href}
              className="rail-card group relative isolate flex h-[34rem] w-[82vw] shrink-0 snap-start flex-col justify-end overflow-hidden rounded-[1.75rem] bg-olivo p-7 sm:w-[24rem] lg:h-[min(78svh,44rem)] lg:w-[min(34vw,32rem)] lg:p-9"
            >
              <img
                src={d.image.src}
                srcSet={d.image.srcset}
                sizes="(min-width:1024px) 34vw, 82vw"
                alt=""
                loading="lazy"
                decoding="async"
                className="absolute inset-0 -z-10 size-full object-cover transition-transform duration-[1.4s] ease-[cubic-bezier(.2,.7,.2,1)] group-hover:scale-[1.07]"
              />
              <div className="absolute inset-0 -z-10 bg-gradient-to-t from-sombra via-sombra/45 to-sombra/5 transition-colors duration-700 group-hover:via-sombra/60" />
              <span className="display absolute top-5 right-7 text-[5.5rem] leading-none text-crema/15 tabular-nums transition-colors duration-700 group-hover:text-trigo/80 lg:top-7 lg:right-9 lg:text-[7rem]">
                {String(k + 1).padStart(2, '0')}
              </span>
              <p className="eyebrow text-trigo">{d.region}</p>
              <h3 className="display mt-3 text-[2.6rem] leading-[0.95] lg:text-5xl">{d.short}</h3>
              <div className="grid grid-rows-[0fr] transition-[grid-template-rows] duration-700 ease-[cubic-bezier(.2,.7,.2,1)] group-hover:grid-rows-[1fr] group-focus-visible:grid-rows-[1fr] max-lg:grid-rows-[1fr]">
                <p className="overflow-hidden text-[0.98rem] leading-relaxed text-crema/80">
                  <span className="block pt-4">{d.summary}</span>
                </p>
              </div>
              <div className="mt-6 flex items-end justify-between gap-4 border-t border-white/15 pt-5">
                <p>
                  <span className="display block text-4xl text-trigo">{d.highlight.value}</span>
                  <span className="text-sm text-crema/65">{d.highlight.label}</span>
                </p>
                <span className="grid size-12 shrink-0 place-items-center rounded-full border border-white/25 transition-all duration-500 group-hover:border-trigo group-hover:bg-trigo group-hover:text-olivo" aria-hidden="true">
                  <svg viewBox="0 0 16 16" className="size-4 -rotate-45 transition-transform duration-500 group-hover:rotate-0" fill="none" stroke="currentColor" strokeWidth="1.8">
                    <path d="M3 8h10m-4-4 4 4-4 4" />
                  </svg>
                </span>
              </div>
              <span className="sr-only">{copy.cta}</span>
            </a>
          ))}
          <div className="w-1 shrink-0" aria-hidden="true" />
        </motion.div>

        {/* Avance del recorrido */}
        {pinned && (
          <div className="mx-auto mt-10 flex w-full max-w-[90rem] items-center gap-5 px-12 text-[0.72rem] font-semibold tracking-[0.2em] text-crema/45 uppercase" aria-hidden="true">
            <span>01</span>
            <span className="relative h-px flex-1 bg-crema/15">
              <motion.span className="absolute inset-0 origin-left bg-trigo" style={{ scaleX: bar }} />
            </span>
            <span>{String(items.length).padStart(2, '0')}</span>
          </div>
        )}
      </div>
    </section>
  );
}
