import { animate, useInView, useReducedMotion } from 'motion/react';
import { useEffect, useRef, useState } from 'react';

const fmt = new Intl.NumberFormat('es-MX');

/** Número que cuenta desde 0 cuando entra en pantalla */
export default function CountUp({ to, suffix = '', duration = 2.2, className = '' }: { to: number; suffix?: string; duration?: number; className?: string }) {
  const ref = useRef<HTMLSpanElement>(null);
  const inView = useInView(ref, { once: true, margin: '0px 0px -10% 0px' });
  const reduce = useReducedMotion();
  const [n, setN] = useState(reduce ? to : 0);

  useEffect(() => {
    if (!inView || reduce) return;
    const c = animate(0, to, { duration, ease: [0.2, 0.7, 0.2, 1], onUpdate: (v) => setN(Math.round(v)) });
    return () => c.stop();
  }, [inView, reduce, to, duration]);

  return (
    <span ref={ref} className={`tabular-nums ${className}`} aria-label={`${fmt.format(to)}${suffix}`}>
      <span aria-hidden="true">
        {fmt.format(n)}
        {suffix}
      </span>
    </span>
  );
}
