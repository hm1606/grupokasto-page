import { AnimatePresence, motion, useReducedMotion } from 'motion/react';
import { useEffect, useState } from 'react';
import type { Pic } from '../../lib/images';

export type HeroSlide = { image: Pic; label: string; href: string; alt: string };

const DURATION = 6500;
const ease = [0.2, 0.7, 0.2, 1] as const;

/** Portada: fotos reales de las divisiones que se suceden con zoom lento, y el titular que entra palabra por palabra. */
export default function HomeHero({ slides, since, wheat }: { slides: HeroSlide[]; since: number; wheat: string }) {
  const [i, setI] = useState(0);
  const [paused, setPaused] = useState(false);
  const reduce = useReducedMotion();

  // La barra de progreso (animación CSS) marca el tiempo: al pasar el mouse se pausa y al terminar avanza
  const next = () => setI((n) => (n + 1) % slides.length);

  // Espera al telón de bienvenida (si está) para empezar la animación del titular
  const [ready, setReady] = useState(false);
  useEffect(() => {
    const root = document.documentElement;
    if (!root.classList.contains('has-intro')) return setReady(true);
    const mo = new MutationObserver(() => !root.classList.contains('has-intro') && setReady(true));
    mo.observe(root, { attributes: true, attributeFilter: ['class'] });
    return () => mo.disconnect();
  }, []);

  const words = ['Del', 'campo', 'a', 'la', 'mesa', 'de', 'México'];
  const s = slides[i];

  return (
    <section
      className="relative isolate flex min-h-[100svh] flex-col justify-end overflow-hidden bg-olivo text-white"
      onMouseEnter={() => setPaused(true)}
      onMouseLeave={() => setPaused(false)}
      aria-roledescription="carrusel"
    >
      <AnimatePresence initial={false}>
        <motion.div
          key={i}
          className="absolute inset-0 -z-10"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{ duration: 1.4, ease }}
        >
          <motion.img
            src={s.image.src}
            srcSet={s.image.srcset}
            sizes="100vw"
            alt={s.alt}
            width={s.image.width}
            height={s.image.height}
            className="size-full object-cover"
            initial={{ scale: reduce ? 1 : 1.14 }}
            animate={{ scale: 1 }}
            transition={{ duration: DURATION / 1000 + 1.5, ease: 'linear' }}
            fetchPriority={i === 0 ? 'high' : 'auto'}
            loading={i === 0 ? 'eager' : 'lazy'}
          />
        </motion.div>
      </AnimatePresence>
      <div className="absolute inset-0 -z-10 bg-gradient-to-t from-olivo via-olivo/40 to-olivo/35" />
      <div className="absolute inset-0 -z-10 bg-gradient-to-r from-olivo/80 via-olivo/25 to-transparent" />
      {/* Trigo en silueta, firma del sitio anterior */}
      <img src={wheat} alt="" aria-hidden="true" className="pointer-events-none absolute inset-x-0 bottom-0 -z-10 h-44 w-full object-cover object-top opacity-[0.13] select-none" />

      <div className="mx-auto w-full max-w-[90rem] px-5 pt-36 pb-10 sm:px-8 lg:px-12 lg:pb-14">
        {/* Las animaciones del texto son CSS (se ven sin esperar a React; se pausan durante el telón) */}
        <p className="eyebrow animate-fade-up flex items-center gap-3 text-trigo" data-intro-wait>
          <span className="h-px w-8 bg-trigo/60" aria-hidden="true" />
          Contribuimos al desarrollo · Desde {since}
        </p>
        <h1 className="display mt-4 max-w-6xl text-[3.4rem] uppercase sm:text-8xl lg:text-[8.6rem]" aria-label="Del campo a la mesa de México">
          {words.map((w, k) => (
            <span key={k} className="inline-block overflow-hidden pb-[0.12em] align-bottom" aria-hidden="true">
              <span
                className={`hero-word inline-block ${w === 'mesa' ? 'text-trigo' : ''}`}
                style={{ animationDelay: `${150 + k * 70}ms` }}
                data-intro-wait
              >
                {w}
                {k < words.length - 1 ? '\u00a0' : ''}
              </span>
            </span>
          ))}
        </h1>
        <div
          className="animate-fade-up mt-8 flex max-w-5xl flex-col gap-8 lg:flex-row lg:items-end lg:justify-between"
          style={{ animationDelay: '800ms' }}
          data-intro-wait
        >
          <p className="max-w-xl text-lg leading-relaxed text-white/80 sm:text-xl">
            Granos, harinas, pecuaria, invernaderos, panadería y productos de consumo: ocho divisiones que trabajan juntas en el Bajío, Occidente y Noroeste del país.
          </p>
          <div className="flex flex-wrap gap-3">
            <a href="/divisiones/" className="btn btn-trigo group">
              Conoce las divisiones
              <svg viewBox="0 0 16 16" className="arrow size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                <path d="M3 8h10m-4-4 4 4-4 4" />
              </svg>
            </a>
            <a href="/nosotros/" className="btn btn-outline-light">
              Nuestra historia
            </a>
          </div>
        </div>

        {/* Indicadores: división de cada foto con barra de progreso */}
        <p className="mt-12 flex items-center justify-between text-[0.72rem] font-semibold tracking-[0.06em] uppercase sm:hidden" aria-hidden="true">
          <span>{s.label}</span>
          <span className="text-white/60 tabular-nums">
            {String(i + 1).padStart(2, '0')} / {String(slides.length).padStart(2, '0')}
          </span>
        </p>
        <div className="mt-3 grid grid-cols-6 gap-x-2 border-white/15 sm:mt-14 sm:gap-x-4 sm:border-t sm:pt-5">
          {slides.map((sl, k) => (
            <button
              key={sl.label}
              type="button"
              onClick={() => setI(k)}
              className={`group py-2 text-left transition-opacity sm:py-0 ${k === i ? 'opacity-100' : 'opacity-55 hover:opacity-90'}`}
              aria-label={`Ver ${sl.label}`}
              aria-current={k === i}
            >
              <span className="relative block h-[2px] overflow-hidden rounded bg-white/20">
                {k === i && (
                  <span
                    key={`bar-${i}`}
                    className="absolute inset-0 origin-left bg-trigo"
                    style={
                      reduce
                        ? undefined
                        : { animation: `gk-progress ${DURATION}ms linear both`, animationPlayState: paused || !ready ? 'paused' : 'running' }
                    }
                    onAnimationEnd={next}
                  />
                )}
              </span>
              <span className="mt-2.5 hidden text-[0.72rem] font-semibold tracking-[0.06em] uppercase sm:block">{sl.label}</span>
            </button>
          ))}
        </div>
      </div>
      <a
        href={s.href}
        className="absolute top-1/2 right-5 hidden -translate-y-1/2 rotate-90 text-[0.66rem] font-semibold tracking-[0.3em] text-white/60 uppercase transition-colors hover:text-trigo lg:right-8 lg:block"
        style={{ transformOrigin: 'right center' }}
      >
        {s.label} →
      </a>
    </section>
  );
}
