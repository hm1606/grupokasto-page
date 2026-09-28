// Servicios que Grupo Kasto ofrece a clientes externos (español e inglés).
// Cada uno genera /servicios/<slug>/ y /en/services/<slug>/. Fotos en src/assets/servicios/<id>/ (hero, a, b).
import { routes, type Lang, type T } from '../i18n/ui';

export type Service = {
  id: string;
  slug: T;
  name: T;
  headline: T;
  summary: T;
  body: T[];
  points: T[];
  /** Teléfono de la oficina que atiende el servicio */
  phone: string;
  /** División relacionada (id) */
  division: string;
  legacyPage: number;
  seo: { title: T; description: T };
};

export const services: Service[] = [
  {
    id: 'logistica-y-originacion',
    slug: { es: 'logistica-y-originacion', en: 'logistics-and-sourcing' },
    name: { es: 'Logística y originación', en: 'Logistics and sourcing' },
    headline: { es: 'Logística y originación de granos y pastas', en: 'Grain and meal logistics and sourcing' },
    summary: { es: 'Compra, almacenamiento, conservación y embarque de trigo, maíz y pasta de soya.', en: 'Purchase, storage, conservation and shipping of wheat, corn and soybean meal.' },
    body: [
      {
        es: 'Prestamos servicios de compra, almacenamiento y conservación; embarque de trigo, maíz y pasta de soya. Además, ofrecemos servicios de recepción de granos y pastas en camión o tolva de ferrocarril; contamos con terminales carrusel en La Barca, Jalisco y en Ciudad Obregón, Sonora.',
        en: 'We provide purchase, storage and conservation services and ship wheat, corn and soybean meal. We also receive grain and meal by truck or rail hopper car, with loop terminals in La Barca, Jalisco, and Ciudad Obregón, Sonora.',
      },
      {
        es: 'La gran capacidad de recepción y logística de transporte nos coloca como una de las principales empresas originadoras de granos del país, lo cual nos llena de orgullo y nos mantiene comprometidos a superarnos diariamente.',
        en: 'Our large receiving capacity and transport logistics make us one of Mexico’s leading grain originators, which fills us with pride and keeps us committed to improving every day.',
      },
      {
        es: 'El resultado de este esfuerzo se confirma en la confianza que nos depositan los productores, a quienes acompañamos en todo su ciclo productivo desde la siembra hasta la comercialización de sus granos.',
        en: 'The result shows in the trust growers place in us: we support them throughout the production cycle, from planting to the sale of their grain.',
      },
    ],
    points: [
      { es: 'Recepción en camión y tolva de ferrocarril', en: 'Truck and rail hopper-car receiving' },
      { es: 'Terminales carrusel en La Barca y Ciudad Obregón', en: 'Loop terminals in La Barca and Ciudad Obregón' },
      { es: 'Almacenamiento y conservación', en: 'Storage and conservation' },
      { es: 'Acompañamiento al productor de la siembra a la venta', en: 'Grower support from planting to sale' },
    ],
    phone: '352 526 1766',
    division: 'granos',
    legacyPage: 18,
    seo: {
      title: { es: 'Logística y originación de granos', en: 'Grain logistics and sourcing in Mexico' },
      description: {
        es: 'Compra, almacenamiento, conservación y embarque de trigo, maíz y pasta de soya, con terminales carrusel en La Barca, Jalisco, y Ciudad Obregón, Sonora.',
        en: 'Purchase, storage, conservation and shipping of wheat, corn and soybean meal, with loop terminals in La Barca, Jalisco, and Ciudad Obregón, Sonora.',
      },
    },
  },
  {
    id: 'comercializacion',
    slug: { es: 'comercializacion', en: 'trading' },
    name: { es: 'Comercialización', en: 'Trading' },
    headline: { es: 'Comercialización de granos y harinas de trigo', en: 'Grain and wheat flour trading' },
    summary: { es: 'Trigo, maíz y harina de trigo para la industria de la transformación y la nixtamalización.', en: 'Wheat, corn and wheat flour for the processing and nixtamalization industries.' },
    body: [
      {
        es: 'Nos especializamos en la comercialización de trigo y maíz, así como en la producción y venta de harina de trigo. Los principales destinos de nuestros productos son: la Industria de la transformación (sea trigos harineros para la producción de pan o cristalinos para la producción de pastas), así como la industria de la nixtamalización.',
        en: 'We specialize in trading wheat and corn, and in producing and selling wheat flour. Our products mainly go to the processing industry (bread wheat for baking or durum wheat for pasta) and to the nixtamalization industry.',
      },
      {
        es: 'Siendo uno de los líderes productores de harina de trigo en la región del occidente, contamos con la logística necesaria para entregar este producto en más de 10 estados de la república, contando siempre con una calidad que nos respalda, pero sobre todo con una visión de negocio centrada en el servicio al cliente.',
        en: 'As one of the leading wheat flour producers in western Mexico, we have the logistics to deliver to more than 10 states, always backed by quality and, above all, by a customer-centered business vision.',
      },
    ],
    points: [
      { es: 'Trigos harineros y cristalinos', en: 'Bread and durum wheat' },
      { es: 'Maíz para nixtamalización', en: 'Corn for nixtamalization' },
      { es: 'Harina de trigo para la industria', en: 'Wheat flour for industry' },
      { es: 'Entrega en más de 10 estados', en: 'Delivery to more than 10 states' },
    ],
    phone: '33 3145 2460',
    division: 'molinos-de-trigo',
    legacyPage: 19,
    seo: {
      title: { es: 'Comercialización de granos y harinas de trigo', en: 'Grain and wheat flour trading' },
      description: {
        es: 'Comercialización de trigo, maíz y harina de trigo para panificación, pastas y nixtamalización, con entrega en más de 10 estados de México.',
        en: 'Trading of wheat, corn and wheat flour for baking, pasta and nixtamalization, with delivery to more than 10 Mexican states.',
      },
    },
  },
  {
    id: 'asesoria-y-consultoria',
    slug: { es: 'asesoria-y-consultoria', en: 'advisory-and-consulting' },
    name: { es: 'Asesoría y consultoría', en: 'Advisory and consulting' },
    headline: { es: 'Asesoría y consultoría corporativa y operativa', en: 'Corporate and operational advisory and consulting' },
    summary: { es: 'Procesos, contabilidad, legal, sistemas de información, redes y soporte técnico.', en: 'Processes, accounting, legal, information systems, networks and technical support.' },
    body: [
      {
        es: 'Contamos con personal capacitado en áreas técnicas y administrativas que dan soporte a las empresas que forman parte de Grupo Kasto. Esta experiencia nos permite ofrecer estos servicios a los clientes que lo requieren.',
        en: 'We have trained technical and administrative staff who support the companies of Grupo Kasto. This experience allows us to offer these services to clients who need them.',
      },
      {
        es: 'Dentro de nuestro portafolio de servicios están: Consultoría y rediseño de procesos, consultoría contable y legal, consultoría en la implementación y operación de sistemas de información, desarrollo de sistemas de información a la medida, administración de la seguridad de redes informáticas, además de soporte operativo y técnico.',
        en: 'Our portfolio includes process consulting and redesign, accounting and legal consulting, consulting on the implementation and operation of information systems, custom software development, network security management, and operational and technical support.',
      },
    ],
    points: [
      { es: 'Consultoría y rediseño de procesos', en: 'Process consulting and redesign' },
      { es: 'Consultoría contable y legal', en: 'Accounting and legal consulting' },
      { es: 'Sistemas de información y desarrollo a la medida', en: 'Information systems and custom development' },
      { es: 'Seguridad de redes y soporte técnico', en: 'Network security and technical support' },
    ],
    phone: '352 526 1939',
    division: 'servicios',
    legacyPage: 20,
    seo: {
      title: { es: 'Asesoría y consultoría corporativa y operativa', en: 'Corporate and operational consulting' },
      description: {
        es: 'Consultoría en procesos, contabilidad, legal, sistemas de información, desarrollo a la medida, seguridad de redes y soporte técnico, con la experiencia de Grupo Kasto.',
        en: 'Consulting on processes, accounting, legal, information systems, custom development, network security and technical support, backed by Grupo Kasto’s experience.',
      },
    },
  },
  {
    id: 'desarrollo-de-proyectos',
    slug: { es: 'desarrollo-de-proyectos', en: 'project-development' },
    name: { es: 'Desarrollo de proyectos', en: 'Project development' },
    headline: { es: 'Desarrollo de proyectos inmobiliarios', en: 'Real-estate project development' },
    summary: { es: 'Diseño, construcción y arrendamiento de proyectos con una fórmula ganar-ganar.', en: 'Design, construction and leasing of projects with a win-win formula.' },
    body: [
      {
        es: 'En Grupo Kasto contamos con maquinaria, bodegas, terrenos y con la experiencia en el diseño y realización de proyectos, es por ello que sabemos seleccionar el mejor plan de desarrollo inmobiliario a fin de garantizar una inversión segura.',
        en: 'Grupo Kasto has machinery, warehouses, land and experience in designing and executing projects, so we know how to choose the best real-estate development plan to guarantee a safe investment.',
      },
      {
        es: 'Tenemos presente que para invertir en construcción es importante contar con un proyecto viable. Para esto realizamos un adecuado análisis del tiempo de desarrollo y la inversión necesaria.',
        en: 'We know that investing in construction requires a viable project, so we carefully analyze development time and the investment required.',
      },
      {
        es: 'En aquellos negocios que hacen sentido al grupo hemos desarrollado una fórmula ganar-ganar, en donde construimos el proyecto para luego arrendarlo a nuestros socios comerciales.',
        en: 'For businesses that make sense for the group we have developed a win-win formula: we build the project and then lease it to our business partners.',
      },
    ],
    points: [
      { es: 'Maquinaria, bodegas y terrenos propios', en: 'Our own machinery, warehouses and land' },
      { es: 'Análisis de viabilidad, tiempos e inversión', en: 'Feasibility, timeline and investment analysis' },
      { es: 'Construcción a la medida', en: 'Build-to-suit construction' },
      { es: 'Arrendamiento a socios comerciales', en: 'Leasing to business partners' },
    ],
    phone: '352 526 1939',
    division: 'promotora-de-inversion',
    legacyPage: 21,
    seo: {
      title: { es: 'Desarrollo de proyectos inmobiliarios', en: 'Real-estate project development' },
      description: {
        es: 'Diseño, construcción y arrendamiento de proyectos inmobiliarios con maquinaria, bodegas y terrenos propios de Grupo Kasto.',
        en: 'Design, construction and leasing of real-estate projects with Grupo Kasto’s own machinery, warehouses and land.',
      },
    },
  },
];

export const serviceById = (id: string) => services.find((s) => s.id === id);
export const serviceUrl = (lang: Lang, s: Service) => `${routes.services[lang]}${s.slug[lang]}/`;
