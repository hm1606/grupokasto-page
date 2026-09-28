import { AnimatePresence, motion } from 'motion/react';
import { useEffect, useState } from 'react';

type Topic = { id: string; label: string };
type Props = { topics: Topic[]; privacyVersion: string; email: string; privacyHref: string; lang?: 'es' | 'en' };

const TX = {
  es: {
    name: 'Nombre completo *', company: 'Empresa (opcional)', email: 'Correo electrónico *', phone: 'Teléfono', topic: '¿Sobre qué tema nos escribes? *',
    message: 'Tu mensaje *', complaint: 'Cuéntanos tu queja o sugerencia *', trap: 'No llenar',
    accept: 'Acepto el', notice: 'aviso de privacidad', acceptEnd: 'y que Grupo Kasto use mis datos para responder a este mensaje.',
    send: 'Enviar mensaje', sending: 'Enviando…', fail: 'No se pudo enviar el mensaje.', alt: 'También puedes escribirnos a',
    okTitle: 'Gracias, recibimos tu mensaje.', okText: 'Lo turnamos al área indicada y te respondemos a la brevedad por correo o teléfono.', again: 'Enviar otro mensaje',
  },
  en: {
    name: 'Full name *', company: 'Company (optional)', email: 'Email *', phone: 'Phone', topic: 'What is your message about? *',
    message: 'Your message *', complaint: 'Tell us your complaint or suggestion *', trap: 'Do not fill',
    accept: 'I accept the', notice: 'privacy notice', acceptEnd: 'and allow Grupo Kasto to use my data to reply to this message.',
    send: 'Send message', sending: 'Sending…', fail: 'The message could not be sent.', alt: 'You can also email us at',
    okTitle: 'Thank you, we received your message.', okText: 'We will forward it to the right team and get back to you shortly by email or phone.', again: 'Send another message',
  },
};
type Status = { kind: 'idle' | 'sending' | 'ok' | 'error'; message?: string };
const ease = [0.2, 0.7, 0.2, 1] as const;

const field =
  'peer w-full rounded-2xl border border-olivo/15 bg-white/70 px-5 pt-6 pb-2.5 text-[1rem] text-tinta outline-none transition-[border-color,box-shadow,background-color] duration-300 placeholder:text-transparent focus:border-hoja focus:bg-white focus:ring-4 focus:ring-hoja/12';
const label =
  'pointer-events-none absolute top-4 left-5 origin-left text-[0.95rem] text-niebla transition-all duration-300 peer-focus:top-2 peer-focus:scale-[0.78] peer-focus:text-hoja peer-[:not(:placeholder-shown)]:top-2 peer-[:not(:placeholder-shown)]:scale-[0.78]';

/** Formulario de contacto: envía a /api/contacto (server/api.mjs), que manda el correo a Grupo Kasto. */
export default function ContactForm({ topics, privacyVersion, email, privacyHref, lang = 'es' }: Props) {
  const tx = TX[lang];
  const [status, setStatus] = useState<Status>({ kind: 'idle' });
  const [topic, setTopic] = useState('');

  // ?tema=quejas (enlace del pie de página y del sitio anterior) preselecciona el tema
  useEffect(() => {
    const t = new URLSearchParams(location.search).get('tema')?.toLowerCase();
    if (!t) return;
    const match = topics.find((x) => x.id.toLowerCase().includes(t));
    if (match) setTopic(match.id);
  }, [topics]);

  const onSubmit = async (e: React.SyntheticEvent<HTMLFormElement>) => {
    e.preventDefault();
    const form = e.currentTarget;
    const d = Object.fromEntries(new FormData(form)) as Record<string, string>;
    setStatus({ kind: 'sending' });
    try {
      const r = await fetch('/api/contacto', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          kind: d.topic === 'Quejas y sugerencias' ? 'queja' : 'contacto',
          locale: lang,
          name: d.name,
          email: d.email,
          phone: d.phone,
          company: d.company,
          unit: d.topic,
          message: d.message,
          website: d.website, // trampa para bots
          privacy: d.privacy === 'on',
          privacyVersion,
          page: location.pathname,
        }),
      });
      const j = await r.json().catch(() => ({}));
      if (!r.ok || !j.ok) throw new Error(j.message || tx.fail);
      setStatus({ kind: 'ok' });
      form.reset();
      setTopic('');
    } catch (err) {
      setStatus({ kind: 'error', message: err instanceof Error ? err.message : tx.fail });
    }
  };

  return (
    <div className="relative">
      <AnimatePresence mode="wait" initial={false}>
        {status.kind === 'ok' ? (
          <motion.div
            key="ok"
            className="flex min-h-[32rem] flex-col items-start justify-center rounded-[2rem] bg-olivo p-10 text-crema sm:p-14"
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.6, ease }}
            role="status"
          >
            <span className="grid size-16 place-items-center rounded-full bg-trigo text-olivo">
              <svg viewBox="0 0 24 24" className="size-7" fill="none" stroke="currentColor" strokeWidth="2">
                <path d="m5 12 5 5 9-10" />
              </svg>
            </span>
            <h3 className="display mt-8 text-4xl sm:text-5xl">{tx.okTitle}</h3>
            <p className="mt-5 max-w-md text-lg leading-relaxed text-crema/75">
              {tx.okText}
            </p>
            <button type="button" onClick={() => setStatus({ kind: 'idle' })} className="btn btn-outline-light mt-10">
              {tx.again}
            </button>
          </motion.div>
        ) : (
          <motion.form
            key="form"
            onSubmit={onSubmit}
            className="grid gap-4 sm:grid-cols-2"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            noValidate={false}
          >
            <div className="relative">
              <input id="cf-name" name="name" required autoComplete="name" placeholder="Nombre" className={field} maxLength={120} />
              <label htmlFor="cf-name" className={label}>
                {tx.name}
              </label>
            </div>
            <div className="relative">
              <input id="cf-company" name="company" autoComplete="organization" placeholder="Empresa" className={field} maxLength={160} />
              <label htmlFor="cf-company" className={label}>
                {tx.company}
              </label>
            </div>
            <div className="relative">
              <input id="cf-email" name="email" type="email" required autoComplete="email" placeholder="Correo" className={field} maxLength={160} />
              <label htmlFor="cf-email" className={label}>
                {tx.email}
              </label>
            </div>
            <div className="relative">
              <input id="cf-phone" name="phone" type="tel" autoComplete="tel" placeholder="Teléfono" className={field} maxLength={40} />
              <label htmlFor="cf-phone" className={label}>
                {tx.phone}
              </label>
            </div>
            <div className="relative sm:col-span-2">
              <select
                id="cf-topic"
                name="topic"
                required
                value={topic}
                onChange={(e) => setTopic(e.target.value)}
                className={`${field} appearance-none pr-12 ${topic ? '' : 'text-transparent'}`}
              >
                <option value="" disabled hidden />
                {topics.map((t) => (
                  <option key={t.id} value={t.id} className="text-tinta">
                    {t.label}
                  </option>
                ))}
              </select>
              <label htmlFor="cf-topic" className={`${label} ${topic ? 'top-2 scale-[0.78]' : ''}`}>
                {tx.topic}
              </label>
              <svg viewBox="0 0 12 12" className="pointer-events-none absolute top-1/2 right-5 size-3 -translate-y-1/2 text-niebla" fill="none" stroke="currentColor" strokeWidth="1.6" aria-hidden="true">
                <path d="m3 4.5 3 3 3-3" />
              </svg>
            </div>
            <div className="relative sm:col-span-2">
              <textarea id="cf-message" name="message" required rows={5} placeholder="Mensaje" className={`${field} resize-y`} maxLength={5000} />
              <label htmlFor="cf-message" className={label}>
                {topic === 'Quejas y sugerencias' ? tx.complaint : tx.message}
              </label>
            </div>
            {/* Trampa para bots: invisible para personas */}
            <div aria-hidden="true" className="absolute -left-[9999px] h-px w-px overflow-hidden">
              <label>
                {tx.trap} <input name="website" tabIndex={-1} autoComplete="off" />
              </label>
            </div>
            <label className="flex items-start gap-3 text-sm leading-relaxed text-tinta/70 sm:col-span-2">
              <input name="privacy" type="checkbox" required className="mt-1 size-4 shrink-0 accent-hoja" />
              <span>
                {tx.accept}{' '}
                <a href={privacyHref} target="_blank" className="font-semibold text-hoja underline decoration-hoja/40 underline-offset-4">
                  {tx.notice}
                </a>{' '}
                {tx.acceptEnd}
              </span>
            </label>
            <div className="flex flex-col gap-4 pt-2 sm:col-span-2 sm:flex-row sm:items-center sm:justify-between">
              <AnimatePresence>
                {status.kind === 'error' && (
                  <motion.p
                    className="text-sm text-red-700"
                    role="alert"
                    initial={{ opacity: 0, y: 6 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0 }}
                  >
                    {status.message} {tx.alt}{' '}
                    <a href={`mailto:${email}`} className="font-semibold underline">
                      {email}
                    </a>
                    .
                  </motion.p>
                )}
              </AnimatePresence>
              <button type="submit" className="btn btn-primary group ml-auto min-w-52" disabled={status.kind === 'sending'}>
                {status.kind === 'sending' ? (
                  <>
                    <span className="size-4 animate-spin rounded-full border-2 border-white/30 border-t-white" aria-hidden="true" />
                    {tx.sending}
                  </>
                ) : (
                  <>
                    {tx.send}
                    <svg viewBox="0 0 16 16" className="arrow size-3.5" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">
                      <path d="M3 8h10m-4-4 4 4-4 4" />
                    </svg>
                  </>
                )}
              </button>
            </div>
          </motion.form>
        )}
      </AnimatePresence>
    </div>
  );
}
