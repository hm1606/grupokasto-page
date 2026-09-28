// Datos generales de Grupo Kasto: se editan aquí y se reflejan en todo el sitio
// (encabezado, pie de página, contacto, datos estructurados para Google).

const url = (import.meta.env.SITE as string | undefined)?.replace(/\/$/, '') || 'https://www.grupokasto.com';

export const site = {
  name: 'Grupo Kasto',
  legalName: 'Grupo Kasto',
  url,
  tagline: 'Del campo a la mesa de México desde 1945',
  description:
    'Grupo empresarial agroindustrial mexicano con más de 80 años de experiencia: granos, molinos de trigo, pecuaria, servicios, invernaderos, panadería y productos de consumo en el Bajío, Occidente y Noroeste de México.',
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
  // Coordenadas aproximadas de las oficinas corporativas (Santa Ana Pacueco, Pénjamo, Gto.)
  geo: { lat: 20.3499, lng: -102.0197 },
  social: {
    linkedin: 'https://mx.linkedin.com/company/grupokasto',
    facebook: 'https://www.facebook.com/grupokasto',
    instagram: 'https://www.instagram.com/grupokasto/',
  },
  /** Google Analytics 4 del sitio anterior (se conserva para no perder el histórico) */
  gaId: 'G-241ZSMZBXR',
  privacyVersion: '2026-09',
};

export type NavItem = { label: string; href: string; children?: { label: string; href: string; note?: string }[] };

export const nav: NavItem[] = [
  {
    label: 'Nosotros',
    href: '/nosotros/',
    children: [
      { label: 'Historia', href: '/nosotros/', note: 'Desde 1945' },
      { label: 'Filosofía', href: '/filosofia/', note: 'Propósito, misión y valores' },
      { label: 'Certificaciones', href: '/certificaciones/', note: 'Calidad e inocuidad' },
      { label: 'Galería', href: '/galeria/', note: 'Nuestras empresas' },
    ],
  },
  { label: 'Divisiones', href: '/divisiones/' },
  { label: 'Servicios', href: '/servicios/' },
  { label: 'Sostenibilidad', href: '/sostenibilidad/' },
  { label: 'Noticias', href: '/noticias/' },
  { label: 'Contacto', href: '/contacto/' },
];

/** Cifras que se muestran en la portada */
export const stats = [
  { value: 80, suffix: '', label: 'años de experiencia', note: 'Desde 1945, en La Piedad, Michoacán' },
  { value: 25, suffix: '+', label: 'estados de la República', note: 'Con exportación a EUA y Canadá' },
  { value: 3300, suffix: '', label: 'clientes satisfechos', note: 'Industria, comercio y productores' },
  { value: 8, suffix: '', label: 'divisiones de negocio', note: 'Del campo hasta tu hogar' },
];

/** Años de experiencia por giro (contadores del sitio anterior) */
export const experience = [
  { label: 'Granos', years: 80 },
  { label: 'Porcicultura', years: 63 },
  { label: 'Pecuaria', years: 59 },
  { label: 'Harinas', years: 50 },
  { label: 'Productos de consumo', years: 33 },
  { label: 'Invernaderos', years: 23 },
  { label: 'Panadería y bistró', years: 15 },
];

/** Oficinas que aparecen en Contacto */
export const offices = [
  {
    name: 'Oficinas corporativas',
    company: 'Grupo Kasto',
    lines: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
    email: 'contacto@grupokasto.com',
    phone: '352 526 1939',
  },
  {
    name: 'División Granos',
    company: 'Kasavi Comercial, S.A. de C.V.',
    lines: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
    email: 'contacto@grupokasto.com',
    phone: '352 526 1766',
  },
  {
    name: 'División Molinos',
    company: 'Grupo Kasto Molinos, S.A. de C.V.',
    lines: ['Calle 3 No. 690, Colón Industrial', 'Guadalajara, Jal.', 'C.P. 44940'],
    email: 'contacto@grupokasto.com',
    phone: '33 3145 2460',
  },
  {
    name: 'División Pecuaria',
    company: 'Folap, S.A. de C.V.',
    lines: ['Lázaro Cárdenas 1109, Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'],
    email: 'folapsa@grupokasto.com',
    phone: '352 522 0508',
  },
];

/** Temas del formulario de contacto (mismos que el sitio anterior, más quejas y sugerencias) */
export const contactTopics = [
  'Ventas y atención al cliente',
  'División Granos',
  'División Molinos de trigo',
  'División Pecuaria',
  'División Servicios',
  'Invernaderos',
  'Panadería y bistró',
  'Productos de consumo',
  'Promotora de inversión',
  'Proveedores y alianzas',
  'Bolsa de trabajo',
  'Medios y relaciones públicas',
  'Soporte técnico',
  'Quejas y sugerencias',
  'Otros asuntos generales',
];

export const telHref = (phone: string) => `tel:+52${phone.replace(/\D/g, '').slice(-10)}`;
