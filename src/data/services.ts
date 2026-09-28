// Servicios que Grupo Kasto ofrece a clientes externos. Cada uno genera /servicios/<slug>/.
// Fotos en src/assets/servicios/<slug>/ (hero, a, b).

export type Service = {
  slug: string;
  name: string;
  headline: string;
  summary: string;
  body: string[];
  points: string[];
  /** Teléfono de la oficina que atiende el servicio */
  phone: string;
  /** División relacionada (slug) */
  division: string;
  legacyPage: number;
  seo: { title: string; description: string };
};

export const services: Service[] = [
  {
    slug: 'logistica-y-originacion',
    name: 'Logística y originación',
    headline: 'Logística y originación de granos y pastas',
    summary: 'Compra, almacenamiento, conservación y embarque de trigo, maíz y pasta de soya.',
    body: [
      'Prestamos servicios de compra, almacenamiento y conservación, así como de embarque de trigo, maíz y pasta de soya. Recibimos granos y pastas en camión o tolva de ferrocarril y contamos con terminales carrusel en La Barca, Jalisco, y en Ciudad Obregón, Sonora.',
      'La gran capacidad de recepción y la logística de transporte nos colocan como una de las principales empresas originadoras de granos del país, lo que nos llena de orgullo y nos mantiene comprometidos a superarnos diariamente.',
      'El resultado se confirma en la confianza de los productores, a quienes acompañamos en todo su ciclo productivo: desde la siembra hasta la comercialización de sus granos.',
    ],
    points: ['Recepción en camión y tolva de ferrocarril', 'Terminales carrusel en La Barca y Ciudad Obregón', 'Almacenamiento y conservación', 'Acompañamiento al productor de la siembra a la venta'],
    phone: '352 526 1766',
    division: 'granos',
    legacyPage: 18,
    seo: {
      title: 'Logística y originación de granos',
      description:
        'Compra, almacenamiento, conservación y embarque de trigo, maíz y pasta de soya, con terminales carrusel en La Barca, Jalisco, y Ciudad Obregón, Sonora.',
    },
  },
  {
    slug: 'comercializacion',
    name: 'Comercialización',
    headline: 'Comercialización de granos y harinas de trigo',
    summary: 'Trigo, maíz y harina de trigo para la industria de la transformación y la nixtamalización.',
    body: [
      'Nos especializamos en la comercialización de trigo y maíz, así como en la producción y venta de harina de trigo. Nuestros principales destinos son la industria de la transformación —trigos harineros para pan o cristalinos para pastas— y la industria de la nixtamalización.',
      'Como uno de los líderes productores de harina de trigo del occidente, contamos con la logística para entregar en más de 10 estados de la República, con una calidad que nos respalda y, sobre todo, una visión de negocio centrada en el servicio al cliente.',
    ],
    points: ['Trigos harineros y cristalinos', 'Maíz para nixtamalización', 'Harina de trigo para la industria', 'Entrega en más de 10 estados'],
    phone: '33 3145 2460',
    division: 'molinos-de-trigo',
    legacyPage: 19,
    seo: {
      title: 'Comercialización de granos y harinas de trigo',
      description:
        'Comercialización de trigo, maíz y harina de trigo para panificación, pastas y nixtamalización, con entrega en más de 10 estados de México.',
    },
  },
  {
    slug: 'asesoria-y-consultoria',
    name: 'Asesoría y consultoría',
    headline: 'Asesoría y consultoría corporativa y operativa',
    summary: 'Procesos, contabilidad, legal, sistemas de información, redes y soporte técnico.',
    body: [
      'Contamos con personal capacitado en áreas técnicas y administrativas que da soporte a las empresas de Grupo Kasto. Esa experiencia nos permite ofrecer estos servicios a los clientes que lo requieren.',
      'Nuestro portafolio incluye consultoría y rediseño de procesos, consultoría contable y legal, implementación y operación de sistemas de información, desarrollo de sistemas a la medida, administración de la seguridad de redes informáticas y soporte operativo y técnico.',
    ],
    points: ['Consultoría y rediseño de procesos', 'Consultoría contable y legal', 'Sistemas de información y desarrollo a la medida', 'Seguridad de redes y soporte técnico'],
    phone: '352 526 1939',
    division: 'servicios',
    legacyPage: 20,
    seo: {
      title: 'Asesoría y consultoría corporativa y operativa',
      description:
        'Consultoría en procesos, contabilidad, legal, sistemas de información, desarrollo a la medida, seguridad de redes y soporte técnico, con la experiencia de Grupo Kasto.',
    },
  },
  {
    slug: 'desarrollo-de-proyectos',
    name: 'Desarrollo de proyectos',
    headline: 'Desarrollo de proyectos inmobiliarios',
    summary: 'Diseño, construcción y arrendamiento de proyectos con una fórmula ganar-ganar.',
    body: [
      'En Grupo Kasto contamos con maquinaria, bodegas, terrenos y experiencia en el diseño y la realización de proyectos; por eso sabemos seleccionar el mejor plan de desarrollo inmobiliario para garantizar una inversión segura.',
      'Para invertir en construcción es importante contar con un proyecto viable: realizamos un análisis adecuado del tiempo de desarrollo y de la inversión necesaria.',
      'En los negocios que hacen sentido al grupo hemos desarrollado una fórmula ganar-ganar: construimos el proyecto para luego arrendarlo a nuestros socios comerciales.',
    ],
    points: ['Maquinaria, bodegas y terrenos propios', 'Análisis de viabilidad, tiempos e inversión', 'Construcción a la medida', 'Arrendamiento a socios comerciales'],
    phone: '352 526 1939',
    division: 'promotora-de-inversion',
    legacyPage: 21,
    seo: {
      title: 'Desarrollo de proyectos inmobiliarios',
      description:
        'Diseño, construcción y arrendamiento de proyectos inmobiliarios con maquinaria, bodegas y terrenos propios de Grupo Kasto.',
    },
  },
];

export const serviceBySlug = (slug: string) => services.find((s) => s.slug === slug);
