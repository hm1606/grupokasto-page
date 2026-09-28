import { AnimatePresence, motion, useMotionTemplate, useMotionValue, useReducedMotion, useScroll, useSpring, useTransform } from 'motion/react';
import { useEffect, useRef, useState } from 'react';
import type { Pic } from '../../lib/images';

export type HeroSlide = { image: Pic; label: string; href: string; alt: string };

const DURATION = 6500;
const ease = [0.2, 0.7, 0.2, 1] as const;
const curtain = [0.7, 0, 0.2, 1] as const;

/** Portada: fotos reales de las divisiones que entran como cortina, el titular palabra por palabra
 *  y, al bajar, la foto se queda fija y se recoge en una tarjeta mientras el texto sube. */
export type HeroCopy = {
  eyebrow: string;
  /** Nombre del grupo, arriba del lema */
  brand: string;
  /** Palabras del titular; la que coincide con `highlight` va en amarillo */
  words: string[];
  highlight: string;
  text: string;
  primary: { label: string; href: string };
  secondary: { label: string; href: string };
  view: string;
  next: string;
  scroll: string;
};

export default function HomeHero({ slides, wheat, copy }: { slides: HeroSlide[]; wheat: string; copy: HeroCopy }) {
  const [i, setI] = useState(0);
  // Cada cambio sube de capa: la foto nueva siempre entra por encima de la anterior
  const [layer, setLayer] = useState(1);
  const [paused, setPaused] = useState(false);
  const reduce = useReducedMotion();
  const go = (k: number) => {
    setI(k);
    setLayer((z) => z + 1);
  };
  const next = () => go((i + 1) % slides.length);

  // Espera al telón de bienvenida (si está) para empezar
  const [ready, setReady] = useState(false);
  useEffect(() => {
    const root = document.documentElement;
    if (!root.classList.contains('has-intro')) return setReady(true);
    const mo = new MutationObserver(() => !root.classList.contains('has-intro') && setReady(true));
    mo.observe(root, { attributes: true, attributeFilter: ['class'] });
    return () => mo.disconnect();
  }, []);

  // Al bajar: la portada queda fija y se recoge en una tarjeta redondeada
  const wrap = useRef<HTMLDivElement>(null);
  const { scrollYProgress } = useScroll({ target: wrap, offset: ['start start', 'end end'] });
  const p = useSpring(scrollYProgress, { stiffness: 140, damping: 30, mass: 0.4 });
  const insetY = useTransform(p, [0, 1], [0, 5]);
  const insetX = useTransform(p, [0, 1], [0, 4]);
  const radius = useTransform(p, [0, 1], [0, 36]);
  const clipPath = useMotionTemplate`inset(${insetY}% ${insetX}% ${insetY}% ${insetX}% round ${radius}px)`;
  const textY = useTransform(p, [0, 1], [0, -140]);
  const textOpacity = useTransform(p, [0, 0.75], [1, 0]);
  const mediaScale = useTransform(p, [0, 1], [1, 1.12]);

  // Movimiento suave de la foto con el mouse
  const mx = useMotionValue(0);
  const my = useMotionValue(0);
  const sx = useSpring(mx, { stiffness: 60, damping: 20 });
  const sy = useSpring(my, { stiffness: 60, damping: 20 });
  const imgX = useTransform(sx, [-1, 1], [18, -18]);
  const imgY = useTransform(sy, [-1, 1], [12, -12]);
  const onMove = (e: React.PointerEvent) => {
    if (reduce || e.pointerType !== 'mouse') return;
    const r = e.currentTarget.getBoundingClientRect();
    mx.set(((e.clientX - r.left) / r.width) * 2 - 1);
    my.set(((e.clientY - r.top) / r.height) * 2 - 1);
  };

  const words = copy.words;
  const s = slides[i];
  const upcoming = slides[(i + 1) % slides.length];

  return (
    <div ref={wrap} className={reduce ? '' : 'h-[150svh]'}>
      <motion.section
        className="sticky top-0 isolate flex h-[100svh] min-h-[38rem] flex-col justify-end overflow-hidden bg-olivo text-white"
        style={reduce ? undefined : { clipPath }}
        onMouseEnter={() => setPaused(true)}
        onMouseLeave={() => setPaused(false)}
        onPointerMove={onMove}
        aria-roledescription="carrusel"
      >
        <motion.div className="absolute inset-0 -z-10" style={reduce ? undefined : { scale: mediaScale }}>
          <AnimatePresence initial={false}>
            <motion.div
              key={i}
              className="absolute inset-0 overflow-hidden"
              style={{ zIndex: layer }}
              initial={{ clipPath: 'inset(100% 0% 0% 0%)' }}
              animate={{ clipPath: 'inset(0% 0% 0% 0%)' }}
              exit={{ filter: 'brightness(0.55)' }}
              transition={{ duration: reduce ? 0 : 1.35, ease: curtain }}
            >
              <motion.img
                src={s.image.src}
                srcSet={s.image.srcset}
                sizes="100vw"
                alt={s.alt}
                width={s.image.width}
                height={s.image.height}
                className="absolute -inset-6 size-[calc(100%+3rem)] max-w-none object-cover"
                style={reduce ? undefined : { x: imgX, y: imgY }}
                initial={{ scale: reduce ? 1 : 1.28 }}
                animate={{ scale: 1.04 }}
                transition={{ duration: DURATION / 1000 + 2.4, ease: [0.16, 0.8, 0.3, 1] }}
                fetchPriority={i === 0 ? 'high' : 'auto'}
                loading={i === 0 ? 'eager' : 'lazy'}
              />
            </motion.div>
          </AnimatePresence>
          <div className="absolute inset-0 z-[999] bg-gradient-to-t from-olivo via-olivo/35 to-olivo/30" />
          <div className="absolute inset-0 z-[999] bg-gradient-to-r from-olivo/85 via-olivo/25 to-transparent" />
          {/* Trigo en silueta, firma del sitio anterior */}
          <img src={wheat} alt="" aria-hidden="true" className="pointer-events-none absolute inset-x-0 bottom-0 z-[999] h-44 w-full object-cover object-top opacity-[0.13] select-none" />
        </motion.div>

        <motion.div className="mx-auto w-full max-w-[90rem] px-5 pt-36 pb-10 sm:px-8 lg:px-12 lg:pb-14" style={reduce ? undefined : { y: textY, opacity: textOpacity }}>
          {/* Las animaciones del texto son CSS (se ven sin esperar a React; se pausan durante el telón) */}
          <p className="eyebrow animate-fade-up flex items-center gap-3 text-trigo" data-intro-wait>
            <span className="h-px w-8 bg-trigo/60" aria-hidden="true" />
            {copy.eyebrow}
          </p>
          <h1 className="hero-title display mt-5 max-w-6xl uppercase" aria-label={`${copy.brand}: ${words.join(' ')}`}>
            {/* El nombre, con la tipografía del logotipo, firma el lema */}
            <span className="mb-3 block overflow-hidden pb-[0.08em] lg:mb-5" aria-hidden="true">
              <span className="hero-word hero-brand inline-block" data-intro-wait>
                {copy.brand}
              </span>
            </span>
            {words.map((w, k) => (
              <span key={k} className="inline-block overflow-hidden pb-[0.12em] align-bottom" aria-hidden="true">
                <span
                  className={`hero-word inline-block ${w === copy.highlight ? 'hero-highlight text-trigo' : ''}`}
                  style={{ animationDelay: `${260 + k * 80}ms` }}
                  data-intro-wait
                >
                  {w}
                  {k < words.length - 1 ? ' ' : ''}
                </span>
              </span>
            )).flatMap((el, k) =>
              // En escritorio el lema corta después de la palabra resaltada: "…A LA MESA / DE MÉXICO"
              words[k] === copy.highlight && k < words.length - 1 ? [el, <br key="br" className="hidden lg:block" />] : [el],
            )}
          </h1>
          <div
            className="animate-fade-up mt-8 flex max-w-5xl flex-col gap-8 lg:flex-row lg:items-end lg:justify-between"
            style={{ animationDelay: '850ms' }}
            data-intro-wait
          >
            <p className="max-w-xl text-lg leading-relaxed text-white/80 sm:text-xl">{copy.text}</p>
            <div className="flex flex-wrap gap-3">
              <a href={copy.primary.href} className="btn btn-trigo group">
                {copy.primary.label}
                <svg viewBox="0 0 16 16" className="arrow size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                  <path d="M3 8h10m-4-4 4 4-4 4" />
                </svg>
              </a>
              <a href={copy.secondary.href} className="btn btn-outline-light">
                {copy.secondary.label}
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
          <div className="mt-3 flex items-end gap-6 sm:mt-14 lg:gap-10">
            <div className="grid flex-1 grid-cols-6 gap-x-2 border-white/15 sm:gap-x-4 sm:border-t sm:pt-5">
              {slides.map((sl, k) => (
                <button
                  key={sl.label}
                  type="button"
                  onClick={() => k !== i && go(k)}
                  className={`group py-2 text-left transition-opacity sm:py-0 ${k === i ? 'opacity-100' : 'opacity-55 hover:opacity-90'}`}
                  aria-label={`${copy.view} ${sl.label}`}
                  aria-current={k === i}
                >
                  <span className="relative block h-[2px] overflow-hidden rounded bg-white/20">
                    {k === i && (
                      <span
                        key={`bar-${i}-${layer}`}
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
            {/* Lo que sigue: miniatura de la próxima foto */}
            <button
              type="button"
              onClick={next}
              className="group hidden shrink-0 items-center gap-4 rounded-2xl bg-white/8 p-2 pr-5 text-left ring-1 ring-white/15 backdrop-blur-md transition-colors hover:bg-white/15 xl:flex"
            >
              <span className="relative block h-16 w-24 overflow-hidden rounded-xl">
                <AnimatePresence initial={false} mode="popLayout">
                  <motion.img
                    key={upcoming.label}
                    src={upcoming.image.src}
                    alt=""
                    className="absolute inset-0 size-full object-cover transition-transform duration-700 group-hover:scale-110"
                    initial={{ opacity: 0, scale: 1.2 }}
                    animate={{ opacity: 1, scale: 1 }}
                    exit={{ opacity: 0 }}
                    transition={{ duration: 0.8, ease }}
                    loading="lazy"
                  />
                </AnimatePresence>
              </span>
              <span>
                <span className="block text-[0.66rem] font-semibold tracking-[0.2em] text-white/55 uppercase">{copy.next}</span>
                <span className="display mt-0.5 block text-xl">{upcoming.label}</span>
              </span>
            </button>
          </div>
        </motion.div>

        <a
          href={s.href}
          className="absolute top-1/2 right-5 hidden -translate-y-1/2 rotate-90 text-[0.66rem] font-semibold tracking-[0.3em] text-white/60 uppercase transition-colors hover:text-trigo lg:right-8 lg:block"
          style={{ transformOrigin: 'right center' }}
        >
          {s.label} →
        </a>
      </motion.section>
    </div>
  );
}
