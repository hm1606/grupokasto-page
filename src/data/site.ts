// Datos generales de Grupo Kasto: se editan aquí y se reflejan en todo el sitio
// (encabezado, pie de página, contacto, datos estructurados para Google). Textos en español e inglés.
import { routes, type Lang, type T } from '../i18n/ui';

const url = (import.meta.env.SITE as string | undefined)?.replace(/\/$/, '') || 'https://www.grupokasto.com';

export const site = {
  name: 'Grupo Kasto',
  url,
  tagline: { es: 'Del campo a la mesa de México desde 1945', en: 'From the field to Mexico’s table since 1945' } as T,
  description: {
    es: 'Grupo empresarial agroindustrial mexicano con más de 80 años de experiencia: granos, molinos de trigo, pecuaria, servicios, invernaderos, panadería y productos de consumo en el Bajío, Occidente y Noroeste de México.',
    en: 'Mexican agribusiness group with more than 80 years of experience: grain, wheat flour mills, livestock, services, greenhouses, bakery and consumer goods across central, western and northwestern Mexico.',
  } as T,
  foundingYear: 1945,
  email: 'contacto@grupokasto.com',
  privacyEmail: 'datospersonales@grupokasto.com',
  phone: '352 526 1939',
  phoneHref: 'tel:+523525261939',
  address: {
    street: 'Av. Padre Hidalgo No. 600',
    city: 'Santa Ana Pacueco',
    state: 'Guanajuato',
    stateShort: 'Gto.',
    zip: '36910',
    country: 'MX',
  },
  social: {
    linkedin: 'https://mx.linkedin.com/company/grupokasto',
    facebook: 'https://www.facebook.com/grupokasto',
    instagram: 'https://www.instagram.com/grupokasto/',
  },
  /** Google Analytics 4 del sitio anterior (se conserva para no perder el histórico) */
  gaId: 'G-241ZSMZBXR',
  privacyVersion: '2026-09',
};

export type NavItem = { label: string; href: string; key: string; children?: { label: string; href: string; note?: string }[] };

export const nav = (lang: Lang): NavItem[] => {
  const es = lang === 'es';
  return [
    {
      key: 'about',
      label: es ? 'Nosotros' : 'About us',
      href: routes.about[lang],
      children: [
        { label: es ? 'Historia' : 'Our history', href: routes.about[lang], note: es ? 'Desde 1945' : 'Since 1945' },
        { label: es ? 'Filosofía' : 'Philosophy', href: routes.philosophy[lang], note: es ? 'Propósito, misión y valores' : 'Purpose, mission and values' },
        { label: es ? 'Certificaciones' : 'Certifications', href: routes.certifications[lang], note: es ? 'Calidad e inocuidad' : 'Quality and food safety' },
        { label: es ? 'Galería' : 'Gallery', href: routes.gallery[lang], note: es ? 'Nuestras empresas' : 'Our companies' },
      ],
    },
    { key: 'divisions', label: es ? 'Divisiones' : 'Divisions', href: routes.divisions[lang] },
    { key: 'services', label: es ? 'Servicios' : 'Services', href: routes.services[lang] },
    { key: 'sustainability', label: es ? 'Sostenibilidad' : 'Sustainability', href: routes.sustainability[lang] },
    { key: 'news', label: es ? 'Noticias' : 'News', href: routes.news[lang] },
    { key: 'contact', label: es ? 'Contacto' : 'Contact', href: routes.contact[lang] },
  ];
};

/** Cifras de la portada */
export const stats: { value: number; suffix: string; label: T; note: T }[] = [
  { value: 80, suffix: '', label: { es: 'años de experiencia', en: 'years of experience' }, note: { es: 'Desde 1945, en La Piedad, Michoacán', en: 'Since 1945, in La Piedad, Michoacán' } },
  { value: 25, suffix: '+', label: { es: 'estados de la República', en: 'Mexican states' }, note: { es: 'Con exportación a EUA y Canadá', en: 'Plus exports to the US and Canada' } },
  { value: 3300, suffix: '', label: { es: 'clientes satisfechos', en: 'satisfied customers' }, note: { es: 'Industria, comercio y productores', en: 'Industry, retail and growers' } },
  { value: 8, suffix: '', label: { es: 'divisiones de negocio', en: 'business divisions' }, note: { es: 'Del campo hasta tu hogar', en: 'From the field to your home' } },
];

/** Años de experiencia por giro (contadores del sitio anterior) */
export const experience: { label: T; years: number }[] = [
  { label: { es: 'Granos', en: 'Grain' }, years: 80 },
  { label: { es: 'Porcicultura', en: 'Hog farming' }, years: 63 },
  { label: { es: 'Pecuaria', en: 'Livestock' }, years: 59 },
  { label: { es: 'Harinas', en: 'Flour' }, years: 50 },
  { label: { es: 'Productos de consumo', en: 'Consumer goods' }, years: 33 },
  { label: { es: 'Invernaderos', en: 'Greenhouses' }, years: 23 },
  { label: { es: 'Panadería y bistró', en: 'Bakery and bistro' }, years: 15 },
];

/** Oficinas que aparecen en Contacto */
export const offices: { name: T; company: string; lines: string[]; email: string; phone: string }[] = [
  { name: { es: 'Oficinas corporativas', en: 'Corporate offices' }, company: 'Grupo Kasto', lines: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], email: 'contacto@grupokasto.com', phone: '352 526 1939' },
  { name: { es: 'División Granos', en: 'Grain Division' }, company: 'Kasavi Comercial, S.A. de C.V.', lines: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], email: 'contacto@grupokasto.com', phone: '352 526 1766' },
  { name: { es: 'División Molinos', en: 'Flour Mills Division' }, company: 'Grupo Kasto Molinos, S.A. de C.V.', lines: ['Calle 3 No. 690, Colón Industrial', 'Guadalajara, Jal.', 'C.P. 44940'], email: 'contacto@grupokasto.com', phone: '33 3145 2460' },
  { name: { es: 'División Pecuaria', en: 'Livestock Division' }, company: 'Folap, S.A. de C.V.', lines: ['Lázaro Cárdenas 1109, Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'], email: 'folapsa@grupokasto.com', phone: '352 522 0508' },
];

/** Temas del formulario de contacto (los del sitio anterior, más quejas y sugerencias). `id` es lo que llega en el correo. */
export const contactTopics: { id: string; label: T }[] = [
  { id: 'Ventas y atención al cliente', label: { es: 'Ventas y atención al cliente', en: 'Sales and customer service' } },
  { id: 'División Granos', label: { es: 'División Granos', en: 'Grain Division' } },
  { id: 'División Molinos de trigo', label: { es: 'División Molinos de trigo', en: 'Wheat Flour Mills Division' } },
  { id: 'División Pecuaria', label: { es: 'División Pecuaria', en: 'Livestock Division' } },
  { id: 'División Servicios', label: { es: 'División Servicios', en: 'Services Division' } },
  { id: 'Invernaderos', label: { es: 'Invernaderos', en: 'Greenhouses' } },
  { id: 'Panadería y bistró', label: { es: 'Panadería y bistró', en: 'Bakery and bistro' } },
  { id: 'Productos de consumo', label: { es: 'Productos de consumo', en: 'Consumer goods' } },
  { id: 'Promotora de inversión', label: { es: 'Promotora de inversión', en: 'Investment promotion' } },
  { id: 'Proveedores y alianzas', label: { es: 'Proveedores y alianzas', en: 'Suppliers and partnerships' } },
  { id: 'Bolsa de trabajo', label: { es: 'Bolsa de trabajo', en: 'Careers' } },
  { id: 'Medios y relaciones públicas', label: { es: 'Medios y relaciones públicas', en: 'Media and public relations' } },
  { id: 'Soporte técnico', label: { es: 'Soporte técnico', en: 'Technical support' } },
  { id: 'Quejas y sugerencias', label: { es: 'Quejas y sugerencias', en: 'Complaints and suggestions' } },
  { id: 'Otros asuntos generales', label: { es: 'Otros asuntos generales', en: 'Other general matters' } },
];

export const telHref = (phone: string) => `tel:+52${phone.replace(/\D/g, '').slice(-10)}`;
