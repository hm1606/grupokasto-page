import { defineCollection } from 'astro:content';
import { z } from 'astro/zod';
import { glob } from 'astro/loaders';

// Noticias: un archivo Markdown por noticia e idioma.
//   src/content/noticias/es/<slug>.md   (original)
//   src/content/noticias/en/<slug>.md   (traducción; translationOf = slug en español)
// Las fotos van en src/assets/noticias/<slug-en-español>/
const noticias = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/noticias' }),
  schema: ({ image }) =>
    z.object({
      title: z.string(),
      date: z.coerce.date(),
      excerpt: z.string(),
      category: z.string(),
      cover: image(),
      gallery: z.array(image()).default([]),
      source: z.string().default('Comunicación Grupo Kasto'),
      /** Solo en las traducciones: slug de la noticia original en español */
      translationOf: z.string().optional(),
      /** Página del sitio anterior en APEX (f?p=102:<n>), para redirigir enlaces viejos */
      legacyPage: z.number().optional(),
    }),
});

export const collections = { noticias };
