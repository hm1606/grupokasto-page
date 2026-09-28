// Datos estructurados (schema.org / JSON-LD) para que Google entienda al grupo, sus divisiones,
// oficinas, servicios, noticias y migas de pan, en español e inglés.
import { offices, site } from '../data/site';
import { divisions, divisionUrl, type Division } from '../data/divisions';
import { serviceUrl, type Service } from '../data/services';
import { htmlLang, routes, type Lang } from '../i18n/ui';

export const abs = (path: string) => new URL(path, `${site.url}/`).href;

export const ORG_ID = `${site.url}/#organizacion`;
export const websiteId = (lang: Lang) => `${site.url}${routes.home[lang]}#sitio`;

/** Palabras con las que la gente busca lo que hace Grupo Kasto */
export const keywords = {
  es: ['Grupo Kasto', 'agroindustria México', 'comercialización de granos', 'molinos de trigo Jalisco', 'harina de trigo', 'acopio de granos Bajío', 'porcicultura', 'invernaderos de exportación', 'productos de consumo', 'Santa Ana Pacueco', 'La Piedad'],
  en: ['Grupo Kasto', 'Mexican agribusiness', 'grain trading Mexico', 'wheat flour mill Mexico', 'wheat flour supplier Mexico', 'grain storage Mexico', 'hog farming Mexico', 'greenhouse vegetables export', 'consumer goods distribution Mexico'],
};

export const organization = (lang: Lang) => ({
  '@type': 'Corporation',
  '@id': ORG_ID,
  name: site.name,
  url: `${site.url}/`,
  logo: { '@type': 'ImageObject', url: abs('/icon-512.png'), width: 512, height: 512, caption: 'Grupo Kasto' },
  image: abs('/og/home.jpg'),
  description: site.description[lang],
  slogan: site.tagline[lang],
  email: site.email,
  telephone: '+52 352 526 1939',
  foundingDate: String(site.foundingYear),
  foundingLocation: { '@type': 'Place', name: 'La Piedad, Michoacán, México' },
  address: {
    '@type': 'PostalAddress',
    streetAddress: site.address.street,
    addressLocality: site.address.city,
    addressRegion: site.address.state,
    postalCode: site.address.zip,
    addressCountry: 'MX',
  },
  areaServed: [
    { '@type': 'Country', name: 'México' },
    { '@type': 'Country', name: 'United States' },
    { '@type': 'Country', name: 'Canada' },
  ],
  knowsAbout:
    lang === 'es'
      ? ['Comercialización de granos', 'Molienda de trigo', 'Harinas', 'Porcicultura', 'Alimentos balanceados', 'Invernaderos hidropónicos', 'Distribución de productos de consumo', 'Panadería']
      : ['Grain trading', 'Wheat milling', 'Flour', 'Hog farming', 'Animal feed', 'Hydroponic greenhouses', 'Consumer goods distribution', 'Bakery'],
  department: divisions.map((d) => ({ '@type': 'Organization', name: d.name[lang], url: abs(divisionUrl(lang, d)) })),
  contactPoint: offices.map((o) => ({
    '@type': 'ContactPoint',
    name: o.name[lang],
    telephone: `+52 ${o.phone}`,
    email: o.email,
    contactType: 'customer service',
    areaServed: 'MX',
    availableLanguage: ['es', 'en'],
  })),
  sameAs: Object.values(site.social),
});

export const website = (lang: Lang) => ({
  '@type': 'WebSite',
  '@id': websiteId(lang),
  url: abs(routes.home[lang]),
  name: site.name,
  description: site.description[lang],
  inLanguage: htmlLang[lang],
  publisher: { '@id': ORG_ID },
});

export const webPage = (opts: { lang: Lang; path: string; title: string; description: string; image: string; type?: string; breadcrumb?: boolean }) => ({
  '@type': opts.type ?? 'WebPage',
  '@id': `${abs(opts.path)}#pagina`,
  url: abs(opts.path),
  name: opts.title,
  description: opts.description,
  inLanguage: htmlLang[opts.lang],
  isPartOf: { '@id': websiteId(opts.lang) },
  about: { '@id': ORG_ID },
  primaryImageOfPage: { '@type': 'ImageObject', url: abs(opts.image), width: 1200, height: 630 },
  ...(opts.breadcrumb ? { breadcrumb: { '@id': `${abs(opts.path)}#migas` } } : {}),
});

export type Crumb = { name: string; path: string };

export const breadcrumbs = (path: string, crumbs: Crumb[]) => ({
  '@type': 'BreadcrumbList',
  '@id': `${abs(path)}#migas`,
  itemListElement: crumbs.map((c, i) => ({ '@type': 'ListItem', position: i + 1, name: c.name, item: abs(c.path) })),
});

/** Una división: organización del grupo con sus empresas y domicilios */
export const division = (d: Division, lang: Lang) => ({
  '@type': 'Organization',
  '@id': `${abs(divisionUrl(lang, d))}#division`,
  name: d.name[lang],
  url: abs(divisionUrl(lang, d)),
  description: d.seo.description[lang],
  parentOrganization: { '@id': ORG_ID },
  subOrganization: d.directory.map((e) => ({
    '@type': 'Organization',
    name: e.place ? `${e.company} · ${e.place[lang]}` : e.company,
    ...(e.web ? { url: e.web } : {}),
    telephone: e.phones.map((p) => `+52 ${p}`),
    address: { '@type': 'PostalAddress', streetAddress: e.lines.slice(0, -1).join(', '), addressLocality: e.lines.at(-1), addressCountry: 'MX' },
  })),
});

export const service = (s: Service, lang: Lang) => ({
  '@type': 'Service',
  '@id': `${abs(serviceUrl(lang, s))}#servicio`,
  name: s.headline[lang],
  description: s.seo.description[lang],
  url: abs(serviceUrl(lang, s)),
  provider: { '@id': ORG_ID },
  areaServed: { '@type': 'Country', name: 'México' },
  serviceType: s.name[lang],
});

export const article = (opts: { lang: Lang; path: string; title: string; description: string; image: string; date: Date; section: string }) => ({
  '@type': 'NewsArticle',
  '@id': `${abs(opts.path)}#noticia`,
  headline: opts.title,
  description: opts.description,
  image: [abs(opts.image)],
  datePublished: opts.date.toISOString(),
  dateModified: opts.date.toISOString(),
  articleSection: opts.section,
  inLanguage: htmlLang[opts.lang],
  mainEntityOfPage: { '@id': `${abs(opts.path)}#pagina` },
  author: { '@type': 'Organization', name: opts.lang === 'es' ? 'Comunicación Grupo Kasto' : 'Grupo Kasto Communications', url: `${site.url}/` },
  publisher: { '@id': ORG_ID },
});
