// Datos estructurados (schema.org / JSON-LD) para que Google entienda al grupo, sus divisiones,
// oficinas, servicios, noticias y migas de pan.
import { offices, site } from '../data/site';
import { divisions, type Division } from '../data/divisions';
import type { Service } from '../data/services';

export const abs = (path: string) => new URL(path, `${site.url}/`).href;

export const ORG_ID = `${site.url}/#organizacion`;
export const WEBSITE_ID = `${site.url}/#sitio`;

/** Palabras con las que la gente busca lo que hace Grupo Kasto */
export const keywords = [
  'Grupo Kasto',
  'agroindustria México',
  'comercialización de granos',
  'molinos de trigo Jalisco',
  'harina de trigo',
  'acopio de granos Bajío',
  'porcicultura',
  'invernaderos de exportación',
  'productos de consumo',
  'Santa Ana Pacueco',
  'La Piedad',
];

export const organization = () => ({
  '@type': 'Corporation',
  '@id': ORG_ID,
  name: site.name,
  url: `${site.url}/`,
  logo: { '@type': 'ImageObject', url: abs('/icon-512.png'), width: 512, height: 512, caption: 'Grupo Kasto' },
  image: abs('/og/home.jpg'),
  description: site.description,
  slogan: site.tagline,
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
    { '@type': 'Country', name: 'Estados Unidos' },
    { '@type': 'Country', name: 'Canadá' },
  ],
  knowsAbout: ['Comercialización de granos', 'Molienda de trigo', 'Harinas', 'Porcicultura', 'Alimentos balanceados', 'Invernaderos hidropónicos', 'Distribución de productos de consumo', 'Panadería'],
  department: divisions.map((d) => ({ '@type': 'Organization', name: d.name, url: abs(`/divisiones/${d.slug}/`) })),
  contactPoint: offices.map((o) => ({
    '@type': 'ContactPoint',
    name: o.name,
    telephone: `+52 ${o.phone}`,
    email: o.email,
    contactType: 'customer service',
    areaServed: 'MX',
    availableLanguage: ['es'],
  })),
  sameAs: Object.values(site.social),
});

export const website = () => ({
  '@type': 'WebSite',
  '@id': WEBSITE_ID,
  url: `${site.url}/`,
  name: site.name,
  description: site.description,
  inLanguage: 'es-MX',
  publisher: { '@id': ORG_ID },
});

export const webPage = (opts: { path: string; title: string; description: string; image: string; type?: string; breadcrumb?: boolean }) => ({
  '@type': opts.type ?? 'WebPage',
  '@id': `${abs(opts.path)}#pagina`,
  url: abs(opts.path),
  name: opts.title,
  description: opts.description,
  inLanguage: 'es-MX',
  isPartOf: { '@id': WEBSITE_ID },
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
export const division = (d: Division) => ({
  '@type': 'Organization',
  '@id': `${abs(`/divisiones/${d.slug}/`)}#division`,
  name: d.name,
  url: abs(`/divisiones/${d.slug}/`),
  description: d.seo.description,
  parentOrganization: { '@id': ORG_ID },
  subOrganization: d.directory.map((e) => ({
    '@type': 'Organization',
    name: e.place ? `${e.company} · ${e.place}` : e.company,
    ...(e.web ? { url: e.web } : {}),
    telephone: e.phones.map((p) => `+52 ${p}`),
    address: { '@type': 'PostalAddress', streetAddress: e.lines.slice(0, -1).join(', '), addressLocality: e.lines.at(-1), addressCountry: 'MX' },
  })),
});

export const service = (s: Service) => ({
  '@type': 'Service',
  '@id': `${abs(`/servicios/${s.slug}/`)}#servicio`,
  name: s.headline,
  description: s.seo.description,
  url: abs(`/servicios/${s.slug}/`),
  provider: { '@id': ORG_ID },
  areaServed: { '@type': 'Country', name: 'México' },
  serviceType: s.name,
});

export const article = (opts: { path: string; title: string; description: string; image: string; date: Date; section: string }) => ({
  '@type': 'NewsArticle',
  '@id': `${abs(opts.path)}#noticia`,
  headline: opts.title,
  description: opts.description,
  image: [abs(opts.image)],
  datePublished: opts.date.toISOString(),
  dateModified: opts.date.toISOString(),
  articleSection: opts.section,
  inLanguage: 'es-MX',
  mainEntityOfPage: { '@id': `${abs(opts.path)}#pagina` },
  author: { '@type': 'Organization', name: 'Comunicación Grupo Kasto', url: `${site.url}/` },
  publisher: { '@id': ORG_ID },
});
