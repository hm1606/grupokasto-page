// Historia, filosofía, testimonios y certificaciones de Grupo Kasto (español e inglés).
// IMPORTANTE: los textos en español de la filosofía (propósito, misión, visión, valores y formas de trabajo),
// la historia y los testimonios son copia EXACTA del sitio anterior. No se editan sin autorización del cliente.
import type { T } from '../i18n/ui';

const same = (s: string): T => ({ es: s, en: s });

export const history: { year: number; title: T; text: T }[] = [
  {
    year: 1945,
    title: { es: 'Nuestro inicio', en: 'Our beginning' },
    text: {
      es: 'Grupo Kasto nace en el año de 1945 en la Piedad, Michoacán, en el segmento de la comercialización de semillas.',
      en: 'Grupo Kasto was born in 1945 in La Piedad, Michoacán, in the seed trading business.',
    },
  },
  {
    year: 1955,
    title: { es: 'Porcicultura', en: 'Hog farming' },
    text: { es: 'Se ingresa en el mercado de la porcicultura con una pequeña cantidad de cabezas de ganado.', en: 'The group enters the hog-farming market with a small number of head of livestock.' },
  },
  {
    year: 1962,
    title: { es: 'Primera granja tecnificada', en: 'First modern farm' },
    text: { es: 'Se adquiere la primera granja porcina tecnificada.', en: 'The first modern, technology-driven hog farm is acquired.' },
  },
  {
    year: 1965,
    title: { es: 'Granos a gran escala', en: 'Large-scale grain' },
    text: {
      es: 'Se inicia la compra-venta de semillas a gran escala, asentando oficinas en Santa Ana Pacueco, Guanajuato.',
      en: 'Large-scale seed trading begins, with offices established in Santa Ana Pacueco, Guanajuato.',
    },
  },
  {
    year: 1966,
    title: same('Folapsa'),
    text: {
      es: 'Gracias a la visión de varios productores pecuarios, entre ellos el fundador de Grupo Kasto, se constituye Folapsa.',
      en: 'Thanks to the vision of several livestock producers, including the founder of Grupo Kasto, Folapsa is established.',
    },
  },
  {
    year: 1975,
    title: { es: 'Molienda de trigo', en: 'Wheat milling' },
    text: {
      es: 'Contando ya con una experiencia probada en el ramo de la comercialización de granos, se incursiona en el mercado de la molienda de Trigo, a través de participación accionaria en la Harinera de Atotonilco.',
      en: 'With proven experience in grain trading, the group enters wheat milling through an equity stake in Harinera de Atotonilco.',
    },
  },
  {
    year: 1989,
    title: { es: 'Productos de consumo', en: 'Consumer goods' },
    text: {
      es: 'Se inicia en la distribución de productos de consumo mediante la asociación en Productos de Consumo “Z”.',
      en: 'Consumer goods distribution begins through the partnership in Productos de Consumo “Z”.',
    },
  },
  {
    year: 2001,
    title: { es: 'Invernaderos', en: 'Greenhouses' },
    text: {
      es: 'Nace Agrícola el Rosal (ahora Red Sun Farms) ingresando en el mercado de hortalizas y cultivos con sistema hidropónico (invernaderos).',
      en: 'Agrícola El Rosal (now Red Sun Farms) is born, entering the market for vegetables grown in hydroponic greenhouses.',
    },
  },
  {
    year: 2010,
    title: { es: 'Panadería y bistró', en: 'Bakery and bistro' },
    text: {
      es: 'Nace Ohlala! Y desde 2017 Grupo Kasto participa en el sector de panadería y bistró a través de su asociación con “Ohlala! Boulangerie, Bistrot”.',
      en: 'Ohlala! is born, and since 2017 Grupo Kasto has taken part in the bakery and bistro sector through its partnership with “Ohlala! Boulangerie, Bistrot”.',
    },
  },
];

export const leadership: T = {
  es: 'Respaldados por una vasta experiencia, Grupo Kasto se ha convertido en líder regional de la comercialización de granos y harinas; líder nacional en la distribución de productos de consumo y en la exportación de productos de invernaderos de alta tecnología.',
  en: 'Backed by vast experience, Grupo Kasto has become a regional leader in grain and flour trading, and a national leader in consumer goods distribution and in the export of high-tech greenhouse produce.',
};

export const aboutIntro: T = {
  es: 'Somos un sólido y reconocido grupo de empresas agroindustriales con un gran compromiso social. Contamos con áreas de producción, comercialización, servicios y distribución de productos de consumo.',
  en: 'We are a solid, well-established group of agribusiness companies with a strong social commitment, with production, trading, services and consumer goods distribution operations.',
};

/* ---------- Filosofía (texto exacto del sitio anterior) ---------- */
export const philosophy = {
  purposeEyebrow: { es: 'Nuestra razón de ser', en: 'Why we exist' } as T,
  purposeTitle: { es: 'Nuestro Propósito', en: 'Our Purpose' } as T,
  purpose: {
    es: 'Contribuir al desarrollo integral de las comunidades de manera sostenible, llevando felicidad a la mesa de todos los hogares.',
    en: 'To contribute to the integral development of communities in a sustainable way, bringing happiness to the table of every home.',
  } as T,
  missionEyebrow: { es: 'Con rumbo hacia 2025', en: 'Heading toward 2025' } as T,
  missionTitle: { es: 'Misión y Visión', en: 'Mission and Vision' } as T,
  mission: {
    es: 'Somos un grupo de empresas dentro del ramo agroindustrial y de servicios, contribuimos al desarrollo de nuestras regiones.',
    en: 'We are a group of companies in the agribusiness and services sectors; we contribute to the development of our regions.',
  } as T,
  vision: { es: 'Ser la mejor opción de negocio para nuestros clientes.', en: 'To be the best business choice for our customers.' } as T,
  valuesEyebrow: { es: 'Conoce la cultura corporativa', en: 'Our corporate culture' } as T,
  valuesTitle: { es: 'Nuestros Valores', en: 'Our Values' } as T,
  values: [
    {
      name: { es: 'Compromiso', en: 'Commitment' },
      text: {
        es: 'Nos caracterizamos por ser congruentes y comprometidos en cada uno de nuestros servicios, siempre buscando ofrecer soluciones adecuadas para las diferentes necesidades.',
        en: 'We are known for being consistent and committed in each of our services, always seeking to offer the right solutions for different needs.',
      },
    },
    {
      name: { es: 'Responsabilidad', en: 'Responsibility' },
      text: {
        es: 'Enfocamos nuestros esfuerzos en las necesidades de cada cliente, para darle un excelente servicio, siempre bajo la filosofia de ganar-ganar, asegurándonos de cumplir sus expectativas y protegiendo el medio ambiente.',
        en: 'We focus our efforts on each customer’s needs to provide excellent service, always under a win-win philosophy, making sure we meet their expectations while protecting the environment.',
      },
    },
    {
      name: { es: 'Honestidad', en: 'Honesty' },
      text: { es: 'Siempre nos conducimos actuando con rectitud y veracidad.', en: 'We always act with integrity and truthfulness.' },
    },
    {
      name: { es: 'Respeto a la persona', en: 'Respect for people' },
      text: {
        es: 'Cuidamos el trato humano en nuestras relaciones, protegemos la dignidad e integridad de las personas.',
        en: 'We care for the human side of our relationships and protect people’s dignity and integrity.',
      },
    },
    {
      name: { es: 'Humildad', en: 'Humility' },
      text: {
        es: 'Reconocemos nuestras debilidades, cualidades y capacidades, escuchando y aceptando las opiniones que nos aporten en aprendizaje para mejorar y obrar en bien de los demás.',
        en: 'We recognize our weaknesses, qualities and abilities, listening to and accepting opinions that help us learn, improve and act for the good of others.',
      },
    },
    {
      name: { es: 'Lealtad', en: 'Loyalty' },
      text: { es: 'Nuestras relaciones se basan en la disposición, confianza y transparencia.', en: 'Our relationships are built on willingness, trust and transparency.' },
    },
  ] as { name: T; text: T }[],
  waysEyebrow: { es: 'Conoce la cultura corporativa', en: 'Our corporate culture' } as T,
  waysTitle: { es: 'Formas de Trabajo', en: 'How We Work' } as T,
  ways: [
    {
      name: { es: 'Trabajo en equipo', en: 'Teamwork' },
      text: {
        es: 'Fomentamos una organización en la que sumamos el trabajo y las aportaciones de cada persona para el logro de un mismo fin.',
        en: 'We foster an organization that brings together each person’s work and contributions to achieve a common goal.',
      },
    },
    {
      name: { es: 'Pasión por la calidad y servicio', en: 'Passion for quality and service' },
      text: {
        es: 'Entregamos el corazón en lo que hacemos y ofrecemos, nos preocupamos por la eficiencia y oportunidad en los servicios y en la calidad de nuestros productos.',
        en: 'We put our heart into what we do and offer, caring about efficiency and timeliness in our services and the quality of our products.',
      },
    },
    {
      name: { es: 'Mejora Continua', en: 'Continuous Improvement' },
      text: {
        es: 'Contamos con procesos de mejora para nuestros productos y servicios, lo que contribuye al crecimiento y satisfacción de nuestros clientes.',
        en: 'We have improvement processes for our products and services that contribute to our customers’ growth and satisfaction.',
      },
    },
    {
      name: { es: 'Innovación', en: 'Innovation' },
      text: {
        es: 'Apoyamos la creación de soluciones para nuestros clientes a través de quienes conformamos Grupo Kasto.',
        en: 'We support the creation of solutions for our customers through the people who make up Grupo Kasto.',
      },
    },
  ] as { name: T; text: T }[],
};

/* ---------- Testimonios (texto exacto del sitio anterior; son citas de personas reales) ---------- */
export const clientVoices: { name: string; role: T; image: string; quote: T }[] = [
  {
    name: 'Miguel',
    role: { es: 'Cliente', en: 'Customer' },
    image: 'cliente-miguel',
    quote: {
      es: 'Agradezco el buen servicio y disponibilidad de Grupo Kasto, la atención es excelente. Siempre están al pendiente de mi inventario, evitando que se me termine el producto.',
      en: 'I appreciate Grupo Kasto’s good service and availability; the attention is excellent. They always keep an eye on my inventory so I never run out of product.',
    },
  },
  {
    name: 'Alberto',
    role: { es: 'Cliente', en: 'Customer' },
    image: 'cliente-alberto',
    quote: {
      es: 'Tengo respeto y amplio agradecimiento para Grupo Kasto, es una empresa que se preocupa por brindar un buen servicio a sus clientes. Me han ayudado en el crecimiento, gestionando apoyos de publicidad y rotulación de vehículos.',
      en: 'I have great respect and gratitude for Grupo Kasto; it is a company that cares about good customer service. They have helped me grow by arranging advertising support and vehicle signage.',
    },
  },
  {
    name: 'Rosario',
    role: { es: 'Cliente', en: 'Customer' },
    image: 'cliente-rosario',
    quote: {
      es: 'Agradezco que Grupo Kasto esté al pendiente de nosotros y que se interese por nuestra panadería',
      en: 'I am grateful that Grupo Kasto looks after us and takes an interest in our bakery.',
    },
  },
];

export const teamVoices: { name: string; since: number; image: string; quote: T }[] = [
  { name: 'Miguel Ángel', since: 2006, image: 'miguel-angel', quote: { es: 'Lo que más admiro de Grupo Kasto como compañía, es su gran sentido humano', en: 'What I admire most about Grupo Kasto as a company is its great human touch.' } },
  { name: 'Sandra', since: 1989, image: 'sandra', quote: { es: 'Estoy agradecida por seguir creciendo profesional y personalmente en la empresa', en: 'I am grateful to keep growing professionally and personally at the company.' } },
  { name: 'Rodrigo', since: 2012, image: 'rodrigo', quote: { es: 'Los estupendos y apasionados equipos de trabajo, estimulan mi compromiso dentro del grupo', en: 'The great, passionate teams fuel my commitment to the group.' } },
  { name: 'Zulema', since: 2004, image: 'zulema', quote: { es: 'Me siento afortunada de pertenecer a un grupo en donde juntos logramos metas', en: 'I feel lucky to belong to a group where we achieve our goals together.' } },
];

export const valueOffer: { intro: T; body: T } = {
  intro: {
    es: 'Las empresas de Grupo Kasto operan en las zonas del Bajío, Occidente y Noroeste de la República Mexicana, promoviendo sus productos en más de 25 estados y exportando a Estados Unidos y Canadá.',
    en: 'Grupo Kasto’s companies operate in the Bajío, western and northwestern regions of Mexico, selling in more than 25 states and exporting to the United States and Canada.',
  },
  body: {
    es: 'Trabajamos con la velocidad de respuesta necesaria para cumplir con las expectativas y necesidades de nuestros clientes, ofreciendo agilidad, confiabilidad y certeza a los resultados esperados. Nuestro objetivo principal es la satisfacción del cliente.',
    en: 'We work with the responsiveness needed to meet our customers’ expectations and needs, offering agility, reliability and certainty in the expected results. Our main goal is customer satisfaction.',
  },
};

export const leaders: { name: string; role: T; image: string; quote: T }[] = [
  {
    name: 'Susana Solís',
    role: { es: 'Gerente Administrativo', en: 'Administrative Manager' },
    image: 'susana-solis',
    quote: {
      es: 'La promesa de satisfacción de Grupo Kasto radica en el conocimiento de las necesidades de sus consumidores, mismas que se anticipan en su amplio portafolio de productos.',
      en: 'Grupo Kasto’s promise of satisfaction lies in knowing its customers’ needs and anticipating them with a broad product portfolio.',
    },
  },
  {
    name: 'Francisco Javier Ortiz',
    role: { es: 'Gerente Comercial', en: 'Sales Manager' },
    image: 'francisco-javier-ortiz',
    quote: {
      es: 'La oferta de valor de Grupo Kasto, se basa en la seriedad de las negociaciones y en el cumplimiento de los compromisos adquiridos. Mejoramos nuestros procesos buscando maximizar la experiencia de compra.',
      en: 'Grupo Kasto’s value proposition rests on serious negotiations and on honoring our commitments. We improve our processes to maximize the buying experience.',
    },
  },
  {
    name: 'Guillermo Rivera',
    role: { es: 'Gerente de Unidad de Negocio', en: 'Business Unit Manager' },
    image: 'guillermo-rivera',
    quote: {
      es: 'Tenemos la mejor combinación de financiamiento y proveeduría de insumos para nuestros productores, mientras trabajamos en conjunto para conseguir la mejor oferta en el mercado de granos.',
      en: 'We offer our growers the best combination of financing and input supply, while working together to get the best deal in the grain market.',
    },
  },
];

/* ---------- Certificaciones ---------- */
export const certificationsIntro: T[] = [
  {
    es: 'Cumplimos con los más altos estándares de calidad e inocuidad establecidos, a través de procesos estándar que nos permiten trabajar de manera eficiente, oportuna, dinámica y con personal altamente capacitado.',
    en: 'We meet the highest established quality and food-safety standards through standard processes that allow us to work efficiently, promptly and dynamically, with highly trained staff.',
  },
  {
    es: 'Desde 2012, las empresas pertenecientes a las divisiones de granos y molinos de trigo se encuentran certificadas bajo las normas ISO 9001-2015 y HACCP (Análisis de Peligros y Puntos Críticos de Control, por sus siglas en inglés).',
    en: 'Since 2012, the companies in the grain and wheat flour mill divisions have been certified under ISO 9001:2015 and HACCP (Hazard Analysis and Critical Control Points).',
  },
  {
    es: 'Desde el 2022, Molino La Concepción, perteneciente a la división molinos, obtuvo la certificación en el esquema FSSC 22000 (Sistemas de Inocuidad de los Alimentos, por sus siglas en inglés) y Kosher.',
    en: 'Since 2022, Molino La Concepción, part of the mills division, has been certified under FSSC 22000 (Food Safety System Certification) and Kosher.',
  },
];

export const certifications: { name: string; image: string; text: T }[] = [
  { name: 'ISO 9001:2015', image: 'iso-9001', text: { es: 'Sistema de gestión de la calidad en las divisiones Granos y Molinos de trigo, desde 2012.', en: 'Quality management system in the Grain and Flour Mills divisions, since 2012.' } },
  { name: 'HACCP', image: 'haccp', text: { es: 'Análisis de Peligros y Puntos Críticos de Control en granos y molinos, desde 2012.', en: 'Hazard Analysis and Critical Control Points in grain and mills, since 2012.' } },
  { name: 'FSSC 22000', image: 'fssc-22000', text: { es: 'Sistema de inocuidad de los alimentos en Molino La Concepción, desde 2022.', en: 'Food safety system certification at Molino La Concepción, since 2022.' } },
  { name: 'Kosher', image: 'kosher', text: { es: 'Certificación Kosher en Molino La Concepción, desde 2022.', en: 'Kosher certification at Molino La Concepción, since 2022.' } },
];

export const greenhouseIntro: T = {
  es: 'En nuestra División Invernaderos además de contar con el distintivo ESR (Empresa socialmente responsable), aseguramos la exportación de nuestros productos a través de los siguientes certificados:',
  en: 'In our Greenhouse Division, in addition to the ESR (Socially Responsible Company) distinction, we secure the export of our products through the following certifications:',
};

export const greenhouseCertifications: T[] = [
  { es: 'BPA (Buenas Prácticas de Agricultura)', en: 'GAP (Good Agricultural Practices)' },
  { es: 'BPM (Buenas Prácticas para el Manejo de Empaque)', en: 'GMP (Good Packing Practices)' },
  { es: 'SRR (Sistema de Reducción de Riesgos de Contaminación)', en: 'Contamination Risk Reduction System' },
  { es: 'Certificado de Trazabilidad', en: 'Traceability Certificate' },
  same('Customs Trade Partnership Against Terrorism (C-TPAT)'),
];

/** Marcas y empresas del grupo (carrusel de logotipos) */
export const brands = [
  { name: 'División Granos', image: 'granos' },
  { name: 'División Molinos de trigo', image: 'molinos' },
  { name: 'División Pecuaria', image: 'pecuaria' },
  { name: 'División Servicios', image: 'servicios' },
  { name: 'Harinera del Parayas', image: 'parayas' },
  { name: 'Vigía', image: 'vigia' },
  { name: 'Folapsa', image: 'folapsa' },
  { name: 'Recosa', image: 'recosa' },
  { name: 'Red Sun Farms', image: 'red-sun-farms' },
  { name: 'Productos de Consumo Z', image: 'productos-z' },
  { name: 'Ohlala!', image: 'ohlala' },
];

/** Galería de empresas (página de galería) */
export const gallery: { image: string; caption: string; division: string }[] = [
  { image: 'agrobasa', caption: 'Agroindustrias La Barca', division: 'granos' },
  { image: 'sefinsa', caption: 'Semillas y Fibras Internacionales', division: 'granos' },
  { image: 'parayas', caption: 'Harinera del Parayas', division: 'molinos-de-trigo' },
  { image: 'pecuaria', caption: 'Granjas porcinas', division: 'pecuaria' },
  { image: 'folapsa', caption: 'Folapsa', division: 'pecuaria' },
  { image: 'ciudad-del-sol', caption: 'Servicio Ciudad del Sol', division: 'servicios' },
  { image: 'el-rosal', caption: 'Agrícola El Rosal', division: 'invernaderos' },
  { image: 'ohlala', caption: 'Ohlala! Boulangerie Bistrot', division: 'panaderia-y-bistro' },
  { image: 'productos-z', caption: 'Productos de Consumo Z', division: 'productos-de-consumo' },
];

/** Presencia en el mapa: estados con instalaciones y las empresas de cada uno */
export const presence: { state: string; name: string; cities: string; companies: T[] }[] = [
  {
    state: 'jal',
    name: 'Jalisco',
    cities: 'Guadalajara · Zapopan · Tlaquepaque · La Barca · Atotonilco',
    companies: [
      { es: 'Molinos: Planta Guadalajara, Planta Central y Molino La Concepción', en: 'Mills: Guadalajara Plant, Central Plant and Molino La Concepción' },
      same('Harinera de Atotonilco · Harinera del Parayas'),
      { es: 'Agroindustrias La Barca (granos)', en: 'Agroindustrias La Barca (grain)' },
      { es: 'Ohlala!: 11 sucursales y panificadora', en: 'Ohlala!: 11 locations and a bakery plant' },
      same('Productos de Consumo “Z” · IDGK'),
    ],
  },
  {
    state: 'gua',
    name: 'Guanajuato',
    cities: 'Santa Ana Pacueco',
    companies: [
      { es: 'Oficinas corporativas', en: 'Corporate offices' },
      same('Kasavi Comercial · Semillas e Insumos GK'),
      same('Agro Comercio San Juan · Transportes Kasto'),
      same('Multiservicios Profesionales GK · Desarrollo Inmobiliario Kasto'),
      { es: 'Invernaderos', en: 'Greenhouses' },
    ],
  },
  {
    state: 'mic',
    name: 'Michoacán',
    cities: 'La Piedad · Numarán',
    companies: [
      { es: 'Folapsa (alimento balanceado)', en: 'Folapsa (animal feed)' },
      { es: 'Agrícola El Rosal (Red Sun Farms)', en: 'Agrícola El Rosal (Red Sun Farms)' },
      same('Servicios Ciudad del Sol · Recosa'),
    ],
  },
  {
    state: 'son',
    name: 'Sonora',
    cities: 'Ciudad Obregón',
    companies: [same('Semillas y Fibras Internacionales (SEFINSA)'), same('Ferropuerto de Sonora')],
  },
];
