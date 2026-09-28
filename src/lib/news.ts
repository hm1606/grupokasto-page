import { getCollection, type CollectionEntry } from 'astro:content';
import { dateLocale, routes, type Lang, type T } from '../i18n/ui';

export type News = CollectionEntry<'noticias'> & { lang: Lang; slug: string; key: string };

/** Categorías (se guardan en español en cada noticia) */
export const newsCategories: Record<string, T> = {
  Comunidad: { es: 'Comunidad', en: 'Community' },
  Divisiones: { es: 'Divisiones', en: 'Divisions' },
  Eventos: { es: 'Eventos', en: 'Events' },
  'Grupo Kasto': { es: 'Grupo Kasto', en: 'Grupo Kasto' },
  'Nuestra gente': { es: 'Nuestra gente', en: 'Our people' },
  'Seguridad y bienestar': { es: 'Seguridad y bienestar', en: 'Safety and well-being' },
  Sostenibilidad: { es: 'Sostenibilidad', en: 'Sustainability' },
};
export const categoryLabel = (c: string, lang: Lang) => newsCategories[c]?.[lang] ?? c;

/** Noticias de un idioma, de la más reciente a la más antigua. `key` une una noticia con su traducción. */
export async function getNews(lang: Lang): Promise<News[]> {
  const all = await getCollection('noticias', (n) => n.id.startsWith(`${lang}/`));
  return all
    .map((n) => {
      const slug = n.id.slice(3);
      return Object.assign(n, { lang, slug, key: n.data.translationOf ?? slug });
    })
    .sort((a, b) => +b.data.date - +a.data.date);
}

export const newsUrl = (lang: Lang, slug: string) => `${routes.news[lang]}${slug}/`;

export const formatDate = (d: Date, lang: Lang, month: 'long' | 'short' = 'long') =>
  d.toLocaleDateString(dateLocale[lang], { day: 'numeric', month, year: 'numeric', timeZone: 'UTC' });

/** Minutos de lectura aproximados (220 palabras por minuto) */
export const readingTime = (body = '') => Math.max(1, Math.round(body.split(/\s+/).filter(Boolean).length / 220));
