import { useRef } from 'react';
import { motion, useReducedMotion, useScroll, useTransform, type MotionValue } from 'motion/react';

type Props = {
  text: string;
  /** Palabras que se resaltan (coincidencia exacta) */
  highlight?: string[];
  /** Clase de las palabras resaltadas (verde por omisión) */
  highlightClass?: string;
  /** Opacidad de las palabras que aún no se iluminan */
  dim?: number;
  className?: string;
};

function Word({ word, progress, range, mark, dim }: { word: string; progress: MotionValue<number>; range: [number, number]; mark?: string; dim: number }) {
  const opacity = useTransform(progress, range, [dim, 1]);
  return (
    <span className="relative mr-[0.26em] inline-block">
      <motion.span style={{ opacity }} className={mark}>
        {word}
      </motion.span>
    </span>
  );
}

export default function ScrollText({ text, highlight = [], highlightClass = 'text-hoja', dim = 0.18, className }: Props) {
  const ref = useRef<HTMLParagraphElement>(null);
  const reduce = useReducedMotion();
  const { scrollYProgress } = useScroll({ target: ref, offset: ['start 0.85', 'end 0.45'] });
  const words = text.split(' ');

  if (reduce) {
    return (
      <p ref={ref} className={className}>
        {text}
      </p>
    );
  }

  return (
    <p ref={ref} className={className} aria-label={text}>
      <span aria-hidden="true">
        {words.map((w, i) => {
          const start = i / words.length;
          return <Word key={i} word={w} progress={scrollYProgress} range={[start, start + 1 / words.length]} mark={highlight.includes(w) ? highlightClass : undefined} dim={dim} />;
        })}
      </span>
    </p>
  );
}
