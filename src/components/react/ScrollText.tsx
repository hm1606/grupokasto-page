import { useRef } from 'react';
import { motion, useReducedMotion, useScroll, useTransform, type MotionValue } from 'motion/react';

type Props = {
  text: string;
  /** Palabras que se resaltan en verde (coincidencia exacta) */
  highlight?: string[];
  className?: string;
};

function Word({ word, progress, range, gold }: { word: string; progress: MotionValue<number>; range: [number, number]; gold: boolean }) {
  const opacity = useTransform(progress, range, [0.18, 1]);
  return (
    <span className="relative mr-[0.26em] inline-block">
      <motion.span style={{ opacity }} className={gold ? 'text-hoja' : undefined}>
        {word}
      </motion.span>
    </span>
  );
}

export default function ScrollText({ text, highlight = [], className }: Props) {
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
          return <Word key={i} word={w} progress={scrollYProgress} range={[start, start + 1 / words.length]} gold={highlight.includes(w)} />;
        })}
      </span>
    </p>
  );
}
