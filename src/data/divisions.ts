// Divisiones de negocio de Grupo Kasto (español e inglés). Cada una genera /divisiones/<slug>/ y /en/divisions/<slug>/.
// Las fotos viven en src/assets/divisiones/<id>/ (hero, info y las de instalaciones).
import { routes, type Lang, type T } from '../i18n/ui';

export type Social = { network: 'web' | 'facebook' | 'instagram' | 'x' | 'linkedin' | 'youtube' | 'pinterest'; url: string };

export type DirectoryEntry = { company: string; place?: T; lines: string[]; phones: string[]; web?: string; social?: Social[] };

export type Division = {
  /** Identificador fijo (= slug en español y carpeta de fotos) */
  id: string;
  slug: T;
  name: T;
  short: T;
  summary: T;
  headline: T;
  intro: T[];
  units: T[];
  unitsNote: T;
  directory: DirectoryEntry[];
  gallery: { image: string; caption: T }[];
  highlights: { value: T; label: T }[];
  region: T;
  /** Estados donde tiene instalaciones (ids del mapa: jal, mic, gua, son) */
  states: string[];
  /** Página del sitio anterior en APEX (f?p=102:<n>) */
  legacyPage: number;
  seo: { title: T; description: T };
};

const same = (s: string): T => ({ es: s, en: s });

export const divisions: Division[] = [
  {
    id: 'granos',
    slug: { es: 'granos', en: 'grain' },
    name: { es: 'División Granos', en: 'Grain Division' },
    short: { es: 'Granos', en: 'Grain' },
    summary: { es: 'Acopio, acondicionamiento y comercialización de granos, semillas y agroquímicos.', en: 'Sourcing, conditioning and trading of grain, seeds and agrochemicals.' },
    headline: { es: 'Del origen al consumo, cada grano cuenta.', en: 'From origin to consumption, every grain counts.' },
    intro: [
      {
        es: 'Es la encargada de la comercialización de granos, semillas y agroquímicos. Cuenta con instalaciones modernas localizadas en los territorios del Bajío y Noroeste del País, desde donde abastece a las industrias de molienda de trigos harineros y semoleros, de la masa y la tortilla, y el sector pecuario.',
        en: 'It trades grain, seeds and agrochemicals. Its modern facilities in the Bajío region and northwestern Mexico supply the bread-wheat and durum-wheat milling industries, the masa and tortilla industry and the livestock sector.',
      },
      {
        es: 'Opera una plataforma extensa, integrada desde el origen hasta el consumo en el mercado nacional o de exportación. Dentro de sus operaciones están la compra, el manejo, acondicionamiento y almacenamiento de productos agrícolas, principalmente en los estados de Jalisco, Michoacán, Guanajuato y Sonora.',
        en: 'It runs an extensive platform integrated from origin to consumption, for the domestic and export markets. Its operations include the purchase, handling, conditioning and storage of agricultural products, mainly in the states of Jalisco, Michoacán, Guanajuato and Sonora.',
      },
    ],
    units: [
      same('Agroindustrias La Barca (AGROBASA)'),
      same('Kasavi Comercial (KASAVI)'),
      same('Semillas y Fibras Internacionales (SEFINSA)'),
      same('Ferropuerto de Sonora'),
      same('Semillas e Insumos GK'),
    ],
    unitsNote: {
      es: 'Nuestras empresas son especialistas en el acopio y conservación de granos. Están certificadas en ISO 9001-2015 y HACCP (Análisis de Peligros y Puntos Críticos de Control, por sus siglas en inglés); lo que garantiza la homologación de sus procesos y el compromiso con la calidad de los productos que ofrecen: trigo para panificación, trigo cristalino, maíz, soya, sorgo, cártamo y pasta de soya.',
      en: 'Our companies specialize in grain sourcing and storage. They are ISO 9001:2015 and HACCP (Hazard Analysis and Critical Control Points) certified, which guarantees standardized processes and a commitment to the quality of what they offer: bread wheat, durum wheat, corn, soybean, sorghum, safflower and soybean meal.',
    },
    directory: [
      { company: 'Agroindustrias La Barca, S.A. de C.V.', lines: ['Km. 2.5 Carr. La Barca-Zalamea', 'Zona industrial', 'La Barca, Jal. C.P. 47910'], phones: ['393 935 3224', '393 935 0504'] },
      { company: 'Kasavi Comercial, S.A. de C.V.', lines: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 1766', '352 526 2207'] },
      { company: 'Semillas y Fibras Internacionales, S.A. de C.V.', lines: ['Circuito Interior No. 1003', 'Parque Industrial', 'Ciudad Obregón, Son. C.P. 85065'], phones: ['644 411 0150', '644 411 0018'] },
      { company: 'Ferropuerto de Sonora, S.A. de C.V.', lines: ['Carr. Internacional Km. 545-5', 'Zona Industrial', 'Ciudad Obregón, Son. C.P. 85090'], phones: ['644 411 0435', '644 411 0786'] },
      { company: 'Semillas e Insumos GK, S.A. de C.V.', lines: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 2324', '352 526 1340'] },
    ],
    gallery: [
      { image: 'agrobasa', caption: same('Agrobasa') },
      { image: 'kasavi', caption: same('Kasavi') },
      { image: 'sefinsa', caption: same('Sefinsa') },
      { image: 'ferropuerto', caption: same('Ferropuerto') },
      { image: 'agrobasa-2', caption: same('Agrobasa') },
    ],
    highlights: [
      { value: same('80'), label: { es: 'años en granos', en: 'years in grain' } },
      { value: same('5'), label: { es: 'unidades de negocio', en: 'business units' } },
      { value: same('4'), label: { es: 'estados de operación', en: 'states of operation' } },
    ],
    region: same('Jalisco · Michoacán · Guanajuato · Sonora'),
    states: ['jal', 'mic', 'gua', 'son'],
    legacyPage: 7,
    seo: {
      title: { es: 'División Granos: acopio y comercialización de granos', en: 'Grain Division: grain sourcing and trading in Mexico' },
      description: {
        es: 'Compra, acondicionamiento, almacenamiento y comercialización de trigo, maíz, soya, sorgo y cártamo en Jalisco, Michoacán, Guanajuato y Sonora. Certificados ISO 9001 y HACCP.',
        en: 'Purchase, conditioning, storage and trading of wheat, corn, soybean, sorghum and safflower in Jalisco, Michoacán, Guanajuato and Sonora. ISO 9001 and HACCP certified.',
      },
    },
  },
  {
    id: 'molinos-de-trigo',
    slug: { es: 'molinos-de-trigo', en: 'wheat-flour-mills' },
    name: { es: 'División Molinos de trigo', en: 'Wheat Flour Mills Division' },
    short: { es: 'Molinos de trigo', en: 'Flour mills' },
    summary: { es: 'Harinas y subproductos de trigo con los más altos estándares de calidad e inocuidad.', en: 'Wheat flour and by-products made to the highest quality and food-safety standards.' },
    headline: { es: 'Harinas que llegan a la mesa de todo el país.', en: 'Flour that reaches tables across Mexico.' },
    intro: [
      {
        es: 'Está integrada por diferentes empresas localizadas en el estado de Jalisco. Produce harinas y subproductos de trigo con los más altos estándares de calidad e inocuidad, satisfaciendo las necesidades de sus clientes.',
        en: 'It is made up of several companies located in the state of Jalisco. It produces wheat flour and by-products to the highest quality and food-safety standards, meeting its customers’ needs.',
      },
      {
        es: 'Los molinos están estratégicamente ubicados en zonas que permiten garantizar el oportuno abastecimiento de trigos nacionales e importados, así como la distribución de harinas de trigo y subproductos, a más de 10 estados en el centro, occidente y norte del país.',
        en: 'The mills are strategically located to guarantee a timely supply of domestic and imported wheat, and the distribution of wheat flour and by-products to more than 10 states in central, western and northern Mexico.',
      },
    ],
    units: [
      { es: 'Grupo Kasto Molinos · Planta Central', en: 'Grupo Kasto Molinos · Central Plant' },
      { es: 'Grupo Kasto Molinos · Planta Guadalajara', en: 'Grupo Kasto Molinos · Guadalajara Plant' },
      same('Grupo Kasto Molinos · Molino La Concepción'),
      { es: 'Harinera de Atotonilco (participación accionaria)', en: 'Harinera de Atotonilco (equity stake)' },
      { es: 'Compañía Harinera del Parayas (participación accionaria)', en: 'Compañía Harinera del Parayas (equity stake)' },
    ],
    unitsNote: {
      es: 'De estas unidades de negocios se desprenden distintas marcas y variedades de harinas: harinas de alta proteína, harinas fuertes, harinas semi-fuertes, harinas suaves, harinas integrales, harinas preparadas, harinas de uso especial, sémola de trigo y subproductos de trigo, para satisfacer a los sectores panadero, abarrotero, tortillero, galletero, botanero, pizzas, embutidos, pecuario e industrias con requerimientos especiales. Nos regimos con estrictos procesos de calidad y seguridad alimentaria bajo las normas ISO 9001-2015 y HACCP.',
      en: 'These business units produce several brands and varieties of flour: high-protein, strong, medium-strong, soft, whole-wheat, prepared and special-use flours, semolina and wheat by-products for bakeries, grocery, tortilla, cookie, snack, pizza, cured-meat, livestock and other industries with special requirements. We follow strict quality and food-safety processes under ISO 9001:2015 and HACCP.',
    },
    directory: [
      {
        company: 'Grupo Kasto Molinos, S.A. de C.V.',
        place: { es: 'Planta Guadalajara', en: 'Guadalajara Plant' },
        lines: ['Calle 3 No. 690', 'Zona Industrial', 'Guadalajara, Jal. C.P. 44940'],
        phones: ['33 3145 2460', '33 3145 1109'],
        web: 'https://molinosgrupokasto.com/',
        social: [
          { network: 'facebook', url: 'https://www.facebook.com/grupokastomolinos' },
          { network: 'instagram', url: 'https://www.instagram.com/grupokasto/' },
        ],
      },
      { company: 'Grupo Kasto Molinos, S.A. de C.V.', place: { es: 'Planta Central', en: 'Central Plant' }, lines: ['Av. México No. 3777', 'Col. Condominio México', 'Zapopan, Jal. C.P. 45120'], phones: ['33 3647 8614', '33 3647 8664'] },
      { company: 'Grupo Kasto Molinos, S.A. de C.V.', place: same('Molino La Concepción'), lines: ['Km 2.4 Carretera La Barca-Zalamea', 'La Barca, Jal. C.P. 47910'], phones: ['393 688 0554', '393 688 1483'] },
      {
        company: 'Harinera de Atotonilco, S.A. de C.V.',
        lines: ['Fco. Javier Mina No. 301', 'Atotonilco el Alto, Jal. C.P. 47750'],
        phones: ['391 917 0001', '391 917 2305'],
        web: 'https://www.harineradeatotonilco.com.mx/',
        social: [{ network: 'facebook', url: 'https://www.facebook.com/harineraatotonilco/' }],
      },
      { company: 'Cía. Harinera del Parayas, S.A. de C.V.', lines: ['Av. Vallarta No. 3998', 'Col. Juan Manuel Vallarta', 'Zapopan, Jal. C.P. 45120'], phones: ['33 3121 7100'], web: 'https://harineradelparayas.com.mx' },
    ],
    gallery: [
      { image: 'planta-guadalajara', caption: { es: 'Planta Guadalajara', en: 'Guadalajara Plant' } },
      { image: 'planta-central', caption: { es: 'Planta Central', en: 'Central Plant' } },
      { image: 'molino-la-concepcion', caption: same('Molino La Concepción') },
      { image: 'parayas', caption: same('Parayas') },
      { image: 'atotonilco', caption: same('Atotonilco') },
    ],
    highlights: [
      { value: same('50'), label: { es: 'años en harinas', en: 'years in flour' } },
      { value: same('10+'), label: { es: 'estados abastecidos', en: 'states supplied' } },
      { value: same('FSSC 22000'), label: { es: 'y Kosher en La Concepción', en: 'and Kosher at La Concepción' } },
    ],
    region: same('Jalisco'),
    states: ['jal'],
    legacyPage: 8,
    seo: {
      title: { es: 'Molinos de trigo: harinas y subproductos de trigo', en: 'Wheat flour mills: flour and wheat by-products' },
      description: {
        es: 'Grupo Kasto Molinos produce harinas de trigo para panificación, tortilla, galleta, pizza e industria en Jalisco, con distribución a más de 10 estados. ISO 9001, HACCP, FSSC 22000 y Kosher.',
        en: 'Grupo Kasto Molinos produces wheat flour for bakeries, tortillas, cookies, pizza and industry in Jalisco, supplying more than 10 Mexican states. ISO 9001, HACCP, FSSC 22000 and Kosher.',
      },
    },
  },
  {
    id: 'pecuaria',
    slug: { es: 'pecuaria', en: 'livestock' },
    name: { es: 'División Pecuaria', en: 'Livestock Division' },
    short: { es: 'Pecuaria', en: 'Livestock' },
    summary: { es: 'Producción porcina y alimentos balanceados bajo ambientes controlados y seguros.', en: 'Hog production and balanced animal feed in controlled, safe environments.' },
    headline: { es: 'Más de medio siglo en porcicultura.', en: 'More than half a century in hog farming.' },
    intro: [
      {
        es: 'Con 54 años de experiencia en el negocio de la porcicultura, Grupo Kasto continúa con la producción de ganado porcino en sus granjas. Cuenta con procesos y prácticas de producción innovadoras bajo ambientes controlados y seguros, que le permiten vender su ganado a rastros TIF (Tipo Inspección Federal).',
        en: 'With decades of experience in hog farming, Grupo Kasto continues to raise hogs on its farms, using innovative production processes in controlled, safe environments that allow it to sell to TIF (Federal Inspection Type) slaughterhouses.',
      },
    ],
    units: [same('Agro Comercio San Juan'), same('Folapsa')],
    unitsNote: {
      es: 'Adicionalmente en esta División se fabrican y comercializan alimentos balanceados, para la industria porcina y bovina, que cumplen con los más altos de estándares de calidad.',
      en: 'This division also manufactures and sells balanced feed for the hog and cattle industries, meeting the highest quality standards.',
    },
    directory: [
      { company: 'Agro Comercio San Juan, S.A. de C.V.', lines: ['Av. Padre Hidalgo 410-6', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 0705'] },
      {
        company: 'Folap, S.A. de C.V.',
        lines: ['Blvd. Lázaro Cárdenas 1109', 'Col. Santa Fe', 'La Piedad, Mich. C.P. 59370'],
        phones: ['352 522 1350', '352 522 0580'],
        social: [{ network: 'facebook', url: 'https://www.facebook.com/pages/Folapsa/702257193210349' }],
      },
    ],
    gallery: [
      { image: 'folapsa', caption: same('Folapsa') },
      { image: 'granjas-1', caption: { es: 'Granjas porcinas', en: 'Hog farms' } },
      { image: 'granjas-2', caption: { es: 'Granjas porcinas', en: 'Hog farms' } },
      { image: 'folapsa-2', caption: same('Folapsa') },
      { image: 'granjas-3', caption: { es: 'Granjas porcinas', en: 'Hog farms' } },
      { image: 'folapsa-3', caption: same('Folapsa') },
    ],
    highlights: [
      { value: same('63'), label: { es: 'años en porcicultura', en: 'years in hog farming' } },
      { value: same('TIF'), label: { es: 'venta a rastros certificados', en: 'certified slaughterhouses' } },
      { value: same('2'), label: { es: 'unidades de negocio', en: 'business units' } },
    ],
    region: same('Guanajuato · Michoacán'),
    states: ['gua', 'mic'],
    legacyPage: 9,
    seo: {
      title: { es: 'División Pecuaria: porcicultura y alimentos balanceados', en: 'Livestock Division: hog farming and animal feed' },
      description: {
        es: 'Producción de ganado porcino para rastros TIF y alimentos balanceados para la industria porcina y bovina. Agro Comercio San Juan y Folapsa, en Guanajuato y Michoacán.',
        en: 'Hog production for TIF slaughterhouses and balanced feed for the hog and cattle industries. Agro Comercio San Juan and Folapsa, in Guanajuato and Michoacán.',
      },
    },
  },
  {
    id: 'servicios',
    slug: { es: 'servicios', en: 'services' },
    name: { es: 'División Servicios', en: 'Services Division' },
    short: { es: 'Servicios', en: 'Services' },
    summary: { es: 'Abasto, logística, construcción, laboratorio y tecnología para la cadena de valor.', en: 'Supply, logistics, construction, laboratory and technology for the value chain.' },
    headline: { es: 'El soporte que mueve a todo el grupo.', en: 'The backbone that keeps the group moving.' },
    intro: [
      {
        es: 'El crecimiento sostenido en nuestra cadena de valor, provocó la generación de empresas adicionales que cubren las necesidades de abasto, logística y soporte al resto de las unidades de negocio, ampliando la relación con clientes internos y externos.',
        en: 'The sustained growth of our value chain led to new companies that cover the supply, logistics and support needs of the other business units, broadening our relationship with internal and external customers.',
      },
    ],
    units: [
      same('Servicio Ciudad del Sol'),
      same('Regional de La Construcción (Recosa)'),
      same('Transportes Kasto'),
      { es: 'Investigación y Desarrollo Grupo Kasto (IDGK)', en: 'Investigación y Desarrollo Grupo Kasto (IDGK, R&D)' },
      same('Multiservicios Profesionales GK'),
    ],
    unitsNote: {
      es: 'En Servicio Ciudad del sol nos dedicamos a ofrecer la mejor calidad en combustibles. En Recosa desde el año 1979, buscamos entregar a nuestros clientes los mejores productos del mercado para satisfacer sus necesidades de construcción, remodelación y decoración. En IDGK somos un centro de innovación que ofrece servicios de laboratorio analítico para la evaluación de las características físicas y químicas del trigo y harinas. Multiservicios Profesionales GK es el brazo tecnológico y de consultoría de negocio de Grupo Kasto, con procesos maduros bajo la metodología ITIL y soporte técnico a clientes externos.',
      en: 'Servicio Ciudad del Sol offers top-quality fuels. Since 1979, Recosa has delivered the best products on the market for construction, remodeling and decoration. IDGK is an innovation center with an analytical laboratory that evaluates the physical and chemical properties of wheat and flour. Multiservicios Profesionales GK is Grupo Kasto’s technology and business-consulting arm, with mature ITIL-based processes and technical support for external clients.',
    },
    directory: [
      { company: 'Multiservicios Profesionales GK, S.A. de C.V.', lines: ['Av. Padre Hidalgo 410-1', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 1939'] },
      { company: 'Investigación y Desarrollo GK, S.A. de C.V.', lines: ['Av. Abedules 414', 'Rinconada Santa Rita', 'Zapopan, Jal. C.P. 45120'], phones: ['33 3813 4281'] },
      { company: 'Servicios Ciudad del Sol, S.A. de C.V.', lines: ['Av. Michoacán No. 475', 'Col. Ciudad del Sol', 'La Piedad, Mich. C.P. 59310'], phones: ['352 526 6269'] },
      { company: 'Transportes Kasto, S.A. de C.V.', lines: ['Av. Padre Hidalgo No. 410-4', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 1340', '352 522 5571'] },
      {
        company: 'Regional de La Construcción, S.A. de C.V.',
        lines: ['Blvd. Lázaro Cárdenas No. 1111', 'Col. Santa Fe', 'La Piedad, Mich. C.P. 59370'],
        phones: ['352 526 1350', '352 526 1050'],
        web: 'http://recosa.mx/',
        social: [{ network: 'facebook', url: 'https://www.facebook.com/RecosaOficial/' }],
      },
    ],
    gallery: [
      { image: 'ciudad-del-sol', caption: same('Servicio Ciudad del Sol') },
      { image: 'recosa', caption: same('Recosa') },
      { image: 'transportes-kasto', caption: same('Transportes Kasto') },
      { image: 'idgk', caption: same('Investigación y Desarrollo GK') },
      { image: 'multiservicios', caption: same('Multiservicios Profesionales GK') },
    ],
    highlights: [
      { value: same('5'), label: { es: 'empresas de soporte', en: 'support companies' } },
      { value: same('1979'), label: { es: 'Recosa desde', en: 'Recosa since' } },
      { value: same('ITIL'), label: { es: 'procesos de TI', en: 'IT processes' } },
    ],
    region: same('Guanajuato · Michoacán · Jalisco'),
    states: ['gua', 'mic', 'jal'],
    legacyPage: 13,
    seo: {
      title: { es: 'División Servicios: logística, construcción, laboratorio y TI', en: 'Services Division: logistics, construction, laboratory and IT' },
      description: {
        es: 'Combustibles, materiales de construcción (Recosa), transporte, laboratorio de trigo y harinas (IDGK) y tecnología y consultoría (Multiservicios Profesionales GK).',
        en: 'Fuel, construction materials (Recosa), freight, a wheat and flour laboratory (IDGK) and technology and consulting (Multiservicios Profesionales GK).',
      },
    },
  },
  {
    id: 'invernaderos',
    slug: { es: 'invernaderos', en: 'greenhouses' },
    name: { es: 'División Invernaderos', en: 'Greenhouse Division' },
    short: { es: 'Invernaderos', en: 'Greenhouses' },
    summary: { es: 'Vegetales de invernadero hidropónico de alta tecnología para exportación.', en: 'High-tech hydroponic greenhouse vegetables for export.' },
    headline: { es: 'El invernadero más grande del país.', en: 'The largest greenhouse in Mexico.' },
    intro: [
      {
        es: 'Grupo Kasto cuenta con participación accionaria en el segmento de invernaderos, con instalaciones ubicadas en Guanajuato y Michoacán, cuyo mercado principal es el de exportación hacia los Estados Unidos y Canadá. Nos dedicamos a la producción de vegetales bajo un sistema hidropónico de alta tecnología, destacando como el invernadero más grande del país y uno de los más grandes de su tipo en América Latina.',
        en: 'Grupo Kasto holds an equity stake in greenhouses with facilities in Guanajuato and Michoacán, whose main market is export to the United States and Canada. We grow vegetables using a high-tech hydroponic system: the largest greenhouse in Mexico and one of the largest of its kind in Latin America.',
      },
      { es: 'Los productos de esta unidad de negocios se comercializan a través de Red Sun Farms.', en: 'This business unit’s products are marketed through Red Sun Farms.' },
    ],
    units: [same('Agrícola El Rosal'), same('Naturbell'), same('Plantfort'), same('San Miguel Red Sun Farms'), same('Biotech'), { es: 'Red Sun Farms Norteamérica', en: 'Red Sun Farms North America' }],
    unitsNote: {
      es: 'En los invernaderos de Grupo Kasto damos especial atención a la Fito-sanidad y bioseguridad desde la adquisición de la semilla, hasta la entrega del producto en el canal de comercialización. Nuestros principales productos son el tomate en racimo, el pimiento morrón, otros tipos de pimiento, pepino y berenjena.',
      en: 'In Grupo Kasto’s greenhouses we pay special attention to plant health and biosecurity, from the purchase of the seed to the delivery of the product to the sales channel. Our main products are tomatoes on the vine, bell peppers and other peppers, cucumbers and eggplants.',
    },
    directory: [
      {
        company: 'Agrícola El Rosal, S.A. de C.V.',
        lines: ['Granja Santa Elena', 'Rancho Altamira', 'Numarán, Mich. C.P. 59430'],
        phones: ['352 522 9585', '352 522 5106'],
        web: 'https://www.redsunfarms.com/',
        social: [
          { network: 'facebook', url: 'https://www.facebook.com/redsunfarms' },
          { network: 'x', url: 'https://twitter.com/shopredsun' },
          { network: 'instagram', url: 'https://www.instagram.com/shopredsun/' },
          { network: 'pinterest', url: 'https://www.pinterest.com/redsunfarms/' },
          { network: 'linkedin', url: 'https://www.linkedin.com/company/redsunfarms' },
        ],
      },
    ],
    gallery: [1, 2, 3, 4, 5, 6, 7].map((n) => ({ image: `red-sun-farms-${n}`, caption: same('Red Sun Farms') })),
    highlights: [
      { value: { es: 'N.º 1', en: 'No. 1' }, label: { es: 'invernadero más grande de México', en: 'largest greenhouse in Mexico' } },
      { value: { es: 'EUA · CAN', en: 'US · CAN' }, label: { es: 'mercados de exportación', en: 'export markets' } },
      { value: same('6'), label: { es: 'unidades de negocio', en: 'business units' } },
    ],
    region: same('Guanajuato · Michoacán'),
    states: ['gua', 'mic'],
    legacyPage: 10,
    seo: {
      title: { es: 'Invernaderos: hortalizas hidropónicas de exportación', en: 'Greenhouses: hydroponic vegetables for export' },
      description: {
        es: 'Tomate en racimo, pimiento, pepino y berenjena de invernadero hidropónico de alta tecnología en Guanajuato y Michoacán, exportados a EUA y Canadá a través de Red Sun Farms.',
        en: 'Tomatoes on the vine, peppers, cucumbers and eggplants grown in high-tech hydroponic greenhouses in Guanajuato and Michoacán, exported to the US and Canada through Red Sun Farms.',
      },
    },
  },
  {
    id: 'panaderia-y-bistro',
    slug: { es: 'panaderia-y-bistro', en: 'bakery-and-bistro' },
    name: { es: 'Panadería y bistró', en: 'Bakery and bistro' },
    short: { es: 'Panadería y bistró', en: 'Bakery & bistro' },
    summary: { es: 'Ohlala! Boulangerie Bistrot: panadería artesanal francesa en Guadalajara.', en: 'Ohlala! Boulangerie Bistrot: French artisan bakery in Guadalajara.' },
    headline: { es: 'El sabor de la panadería artesanal francesa.', en: 'The taste of French artisan baking.' },
    intro: [
      {
        es: 'Desde 2017 Grupo Kasto participa en el sector de panadería y bistró a través de su asociación con “Ohlala! Boulangerie, Bistrot”; ofreciendo el sabor de la panadería artesanal francesa en México y brindando a sus clientes un espacio cálido y casual para disfrutar de sus productos.',
        en: 'Since 2017, Grupo Kasto has been part of the bakery and bistro sector through its partnership with “Ohlala! Boulangerie, Bistrot”, bringing the taste of French artisan baking to Mexico and offering customers a warm, casual place to enjoy its products.',
      },
    ],
    units: [same('Operadora Ohlala'), same('Productora de Alimentos Oh')],
    unitsNote: {
      es: 'Actualmente esta división cuenta con una panificadora industrial y 11 establecimientos en la zona metropolitana de Guadalajara, ubicados estratégicamente en: La Estancia, La Rioja, Providencia, Monraz, Naciones Unidas, Chapalita, Libertad, Valle Real, San Isidro, Punto Faro y Plan de San Luis.',
      en: 'The division currently has an industrial bakery and 11 locations in the Guadalajara metropolitan area: La Estancia, La Rioja, Providencia, Monraz, Naciones Unidas, Chapalita, Libertad, Valle Real, San Isidro, Punto Faro and Plan de San Luis.',
    },
    directory: [
      {
        company: 'Operadora Ohlala, S.A. de C.V.',
        lines: ['Av. Sebastián Bach 5074', 'La Estancia', 'Zapopan, Jal. C.P. 45020'],
        phones: ['33 1562 6995'],
        web: 'https://ohlala.com.mx/',
        social: [
          { network: 'facebook', url: 'https://www.facebook.com/OhlalaPanaderiaChapalita/' },
          { network: 'instagram', url: 'https://www.instagram.com/ohlalapanaderiagdl/' },
          { network: 'youtube', url: 'https://www.youtube.com/watch?v=HAk5MZpnJjo' },
        ],
      },
      { company: 'Productora de Alimentos Oh, S.A. de C.V.', lines: ['Anillo Perif. Nte. Manuel Gómez Morín 6650, Bodega 1', 'Col. Miramar', 'Zapopan, Jal. C.P. 45060'], phones: ['33 3040 9091'] },
    ],
    gallery: [
      { image: 'ohlala-1', caption: same('Operadora Ohlala') },
      { image: 'productora-1', caption: same('Productora de Alimentos Oh') },
      { image: 'ohlala-2', caption: same('Operadora Ohlala') },
      { image: 'productora-2', caption: same('Productora de Alimentos Oh') },
      { image: 'ohlala-3', caption: same('Operadora Ohlala') },
      { image: 'productora-3', caption: same('Productora de Alimentos Oh') },
      { image: 'ohlala-4', caption: same('Operadora Ohlala') },
      { image: 'productora-4', caption: same('Productora de Alimentos Oh') },
    ],
    highlights: [
      { value: same('11'), label: { es: 'sucursales en Guadalajara', en: 'locations in Guadalajara' } },
      { value: same('1'), label: { es: 'panificadora industrial', en: 'industrial bakery' } },
      { value: same('2017'), label: { es: 'socios desde', en: 'partners since' } },
    ],
    region: { es: 'Zona metropolitana de Guadalajara', en: 'Guadalajara metropolitan area' },
    states: ['jal'],
    legacyPage: 4,
    seo: {
      title: { es: 'Panadería y bistró: Ohlala! Boulangerie Bistrot', en: 'Bakery and bistro: Ohlala! Boulangerie Bistrot' },
      description: {
        es: 'Grupo Kasto participa desde 2017 en Ohlala! Boulangerie Bistrot: panadería artesanal francesa con 11 sucursales y una panificadora industrial en Guadalajara.',
        en: 'Since 2017 Grupo Kasto has partnered in Ohlala! Boulangerie Bistrot: a French artisan bakery with 11 locations and an industrial bakery in Guadalajara.',
      },
    },
  },
  {
    id: 'productos-de-consumo',
    slug: { es: 'productos-de-consumo', en: 'consumer-goods' },
    name: { es: 'División Productos de consumo', en: 'Consumer Goods Division' },
    short: { es: 'Productos de consumo', en: 'Consumer goods' },
    summary: { es: 'Distribución de abarrotes con cobertura del 90 % de la República Mexicana.', en: 'Grocery distribution covering 90% of Mexico.' },
    headline: { es: 'Cerca del consumidor, en todo México.', en: 'Close to consumers, all over Mexico.' },
    intro: [
      {
        es: 'Grupo Kasto tiene participación en el sector abarrotero, distribuye y vende productos de consumo a través de 4 unidades de negocio: mayoreo o preventa; mostradores o cash & carry; distribución asistida o venta horizontal y autoservicio o tiendas de conveniencia, que nos permiten llegar al consumidor final y tener una cobertura del 90% de la República Mexicana.',
        en: 'Grupo Kasto takes part in the grocery sector, distributing and selling consumer goods through four channels —wholesale or pre-sale, cash & carry counters, assisted distribution or horizontal sales, and self-service or convenience stores— that let us reach the end consumer and cover 90% of Mexico.',
      },
    ],
    units: [same('Productos de Consumo “Z”'), same('Abarrotes Monterrey')],
    unitsNote: {
      es: 'Entendemos la importancia que tiene el abasto oportuno de nuestros clientes, para esto se atiende al mercado institucional conformado por hoteles, restaurantes y hospitales a través de telemarketing y venta directa.',
      en: 'We understand how important timely supply is for our customers, which is why we also serve the institutional market —hotels, restaurants and hospitals— through telemarketing and direct sales.',
    },
    directory: [
      {
        company: 'Productos de Consumo “Z”',
        lines: ['Incalpa No. 2000, Periférico Sur', 'Las Pintas', 'Tlaquepaque, Jal. C.P. 45590'],
        phones: ['33 3915 1500', '33 3915 1513'],
        web: 'https://zproductos.mx/',
        social: [
          { network: 'facebook', url: 'https://www.facebook.com/Corporativo-PCZ-111603490601287/' },
          { network: 'x', url: 'https://twitter.com/CorporativoPcz' },
          { network: 'instagram', url: 'https://www.instagram.com/corporativopcz/' },
          { network: 'linkedin', url: 'https://www.linkedin.com/company/productos-de-consumo-z-sa-de-cv' },
          { network: 'youtube', url: 'https://www.youtube.com/channel/UCX1Xh4GSVGrSti4JeiAEtFw' },
        ],
      },
    ],
    gallery: [1, 2, 3, 4].map((n) => ({ image: `pcz-${n}`, caption: same('Productos de Consumo Z') })),
    highlights: [
      { value: same('90 %'), label: { es: 'cobertura nacional', en: 'national coverage' } },
      { value: same('4'), label: { es: 'canales de venta', en: 'sales channels' } },
      { value: same('33'), label: { es: 'años en consumo', en: 'years in consumer goods' } },
    ],
    region: { es: 'Cobertura nacional', en: 'Nationwide coverage' },
    states: ['jal'],
    legacyPage: 14,
    seo: {
      title: { es: 'Productos de consumo: distribución de abarrotes', en: 'Consumer goods: grocery distribution in Mexico' },
      description: {
        es: 'Productos de Consumo “Z” y Abarrotes Monterrey: mayoreo, cash & carry, venta horizontal y autoservicio con cobertura del 90 % de la República Mexicana.',
        en: 'Productos de Consumo “Z” and Abarrotes Monterrey: wholesale, cash & carry, horizontal sales and self-service covering 90% of Mexico.',
      },
    },
  },
  {
    id: 'promotora-de-inversion',
    slug: { es: 'promotora-de-inversion', en: 'investment-promotion' },
    name: { es: 'Promotora de inversión', en: 'Investment promotion' },
    short: { es: 'Promotora de inversión', en: 'Investment' },
    summary: { es: 'Fomento y desarrollo de nuevas inversiones y oportunidades de negocio.', en: 'Promoting and developing new investments and business opportunities.' },
    headline: { es: 'Invertimos en el futuro de nuestras regiones.', en: 'We invest in the future of our regions.' },
    intro: [
      {
        es: 'Esta división tiene como objetivo el fomento, promoción y desarrollo de nuevas inversiones, ya sean en las divisiones existentes o la creación de nuevas empresas u oportunidades de negocio.',
        en: 'This division fosters, promotes and develops new investments, whether in existing divisions or in new companies and business opportunities.',
      },
    ],
    units: [same('Desarrollo Inmobiliario Kasto')],
    unitsNote: {
      es: 'A través de esta empresa en Grupo Kasto buscamos fortalecer nuestro portafolio de negocios, a la vez que promovemos el desarrollo de los estados en donde tenemos presencia.',
      en: 'Through this company, Grupo Kasto strengthens its business portfolio while promoting the development of the states where we operate.',
    },
    directory: [{ company: 'Desarrollo Inmobiliario Kasto, S.A. de C.V.', lines: ['Av. Padre Hidalgo No. 410-2', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'], phones: ['352 526 1939', '352 526 0705'] }],
    gallery: [1, 2, 3, 4].map((n) => ({ image: `dik-${n}`, caption: same('Desarrollo Inmobiliario Kasto') })),
    highlights: [
      { value: same('1'), label: { es: 'unidad de negocio', en: 'business unit' } },
      { value: same('Bajío'), label: { es: 'y Occidente', en: 'and western Mexico' } },
      { value: { es: 'Ganar-ganar', en: 'Win-win' }, label: { es: 'con socios comerciales', en: 'with business partners' } },
    ],
    region: { es: 'Bajío y Occidente', en: 'Bajío and western Mexico' },
    states: ['gua'],
    legacyPage: 15,
    seo: {
      title: { es: 'Promotora de inversión: desarrollo inmobiliario y nuevos negocios', en: 'Investment promotion: real estate and new ventures' },
      description: {
        es: 'Fomento, promoción y desarrollo de nuevas inversiones y proyectos inmobiliarios de Grupo Kasto a través de Desarrollo Inmobiliario Kasto.',
        en: 'Promotion and development of new investments and real-estate projects by Grupo Kasto through Desarrollo Inmobiliario Kasto.',
      },
    },
  },
];

export const divisionById = (id: string) => divisions.find((d) => d.id === id);
export const divisionUrl = (lang: Lang, d: Division) => `${routes.divisions[lang]}${d.slug[lang]}/`;
