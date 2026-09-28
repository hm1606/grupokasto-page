// Divisiones de negocio de Grupo Kasto. Cada una genera su página en /divisiones/<slug>/.
// Las fotos viven en src/assets/divisiones/<slug>/ (hero, info y las de instalaciones).

export type Social = { network: 'web' | 'facebook' | 'instagram' | 'x' | 'linkedin' | 'youtube' | 'pinterest'; url: string };

export type DirectoryEntry = {
  company: string;
  place?: string;
  lines: string[];
  phones: string[];
  web?: string;
  social?: Social[];
};

export type Division = {
  slug: string;
  name: string;
  /** Nombre corto para menús y tarjetas */
  short: string;
  /** Frase breve de la tarjeta */
  summary: string;
  /** Título grande de la página */
  headline: string;
  intro: string[];
  units: string[];
  unitsNote: string;
  directory: DirectoryEntry[];
  /** Instalaciones: nombre del archivo en src/assets/divisiones/<slug>/ y pie de foto */
  gallery: { image: string; caption: string }[];
  highlights: { value: string; label: string }[];
  /** Estados donde opera (para la tarjeta) */
  region: string;
  /** Página del sitio anterior en APEX (f?p=102:<n>) */
  legacyPage: number;
  seo: { title: string; description: string };
};

export const divisions: Division[] = [
  {
    slug: 'granos',
    name: 'División Granos',
    short: 'Granos',
    summary: 'Acopio, acondicionamiento y comercialización de granos, semillas y agroquímicos.',
    headline: 'Del origen al consumo, cada grano cuenta.',
    intro: [
      'Es la encargada de la comercialización de granos, semillas y agroquímicos. Cuenta con instalaciones modernas en el Bajío y el Noroeste del país, desde donde abastece a las industrias de molienda de trigos harineros y semoleros, de la masa y la tortilla, y al sector pecuario.',
      'Opera una plataforma extensa, integrada desde el origen hasta el consumo en el mercado nacional o de exportación: compra, manejo, acondicionamiento y almacenamiento de productos agrícolas, principalmente en Jalisco, Michoacán, Guanajuato y Sonora.',
    ],
    units: [
      'Agroindustrias La Barca (AGROBASA)',
      'Kasavi Comercial (KASAVI)',
      'Semillas y Fibras Internacionales (SEFINSA)',
      'Ferropuerto de Sonora',
      'Semillas e Insumos GK',
    ],
    unitsNote:
      'Nuestras empresas son especialistas en el acopio y conservación de granos. Están certificadas en ISO 9001:2015 y HACCP, lo que garantiza la homologación de sus procesos y el compromiso con la calidad de lo que ofrecen: trigo para panificación, trigo cristalino, maíz, soya, sorgo, cártamo y pasta de soya.',
    directory: [
      {
        company: 'Agroindustrias La Barca, S.A. de C.V.',
        lines: ['Km. 2.5 Carr. La Barca-Zalamea', 'Zona industrial', 'La Barca, Jal. C.P. 47910'],
        phones: ['393 935 3224', '393 935 0504'],
      },
      {
        company: 'Kasavi Comercial, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 1766', '352 526 2207'],
      },
      {
        company: 'Semillas y Fibras Internacionales, S.A. de C.V.',
        lines: ['Circuito Interior No. 1003', 'Parque Industrial', 'Ciudad Obregón, Son. C.P. 85065'],
        phones: ['644 411 0150', '644 411 0018'],
      },
      {
        company: 'Ferropuerto de Sonora, S.A. de C.V.',
        lines: ['Carr. Internacional Km. 545-5', 'Zona Industrial', 'Ciudad Obregón, Son. C.P. 85090'],
        phones: ['644 411 0435', '644 411 0786'],
      },
      {
        company: 'Semillas e Insumos GK, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 2324', '352 526 1340'],
      },
    ],
    gallery: [
      { image: 'agrobasa', caption: 'Agrobasa' },
      { image: 'kasavi', caption: 'Kasavi' },
      { image: 'sefinsa', caption: 'Sefinsa' },
      { image: 'ferropuerto', caption: 'Ferropuerto' },
      { image: 'agrobasa-2', caption: 'Agrobasa' },
    ],
    highlights: [
      { value: '80', label: 'años en granos' },
      { value: '5', label: 'unidades de negocio' },
      { value: '4', label: 'estados de operación' },
    ],
    region: 'Jalisco · Michoacán · Guanajuato · Sonora',
    legacyPage: 7,
    seo: {
      title: 'División Granos: acopio y comercialización de granos',
      description:
        'Compra, acondicionamiento, almacenamiento y comercialización de trigo, maíz, soya, sorgo y cártamo en Jalisco, Michoacán, Guanajuato y Sonora. Certificados ISO 9001 y HACCP.',
    },
  },
  {
    slug: 'molinos-de-trigo',
    name: 'División Molinos de trigo',
    short: 'Molinos de trigo',
    summary: 'Harinas y subproductos de trigo con los más altos estándares de calidad e inocuidad.',
    headline: 'Harinas que llegan a la mesa de todo el país.',
    intro: [
      'Está integrada por diferentes empresas localizadas en el estado de Jalisco. Produce harinas y subproductos de trigo con los más altos estándares de calidad e inocuidad, satisfaciendo las necesidades de sus clientes.',
      'Los molinos están estratégicamente ubicados en zonas que garantizan el oportuno abastecimiento de trigos nacionales e importados, así como la distribución de harinas y subproductos a más de 10 estados del centro, occidente y norte del país.',
    ],
    units: [
      'Grupo Kasto Molinos · Planta Central',
      'Grupo Kasto Molinos · Planta Guadalajara',
      'Grupo Kasto Molinos · Molino La Concepción',
      'Harinera de Atotonilco (participación accionaria)',
      'Compañía Harinera del Parayas (participación accionaria)',
    ],
    unitsNote:
      'De estas unidades se desprenden distintas marcas y variedades: harinas de alta proteína, fuertes, semifuertes, suaves, integrales, preparadas y de uso especial, sémola y subproductos de trigo para los sectores panadero, abarrotero, tortillero, galletero, botanero, de pizzas, embutidos, pecuario e industrias con requerimientos especiales. Nos regimos por las normas ISO 9001:2015 y HACCP.',
    directory: [
      {
        company: 'Grupo Kasto Molinos, S.A. de C.V.',
        place: 'Planta Guadalajara',
        lines: ['Calle 3 No. 690', 'Zona Industrial', 'Guadalajara, Jal. C.P. 44940'],
        phones: ['33 3145 2460', '33 3145 1109'],
        web: 'https://molinosgrupokasto.com/',
        social: [
          { network: 'facebook', url: 'https://www.facebook.com/grupokastomolinos' },
          { network: 'instagram', url: 'https://www.instagram.com/grupokasto/' },
        ],
      },
      {
        company: 'Grupo Kasto Molinos, S.A. de C.V.',
        place: 'Planta Central',
        lines: ['Av. México No. 3777', 'Col. Condominio México', 'Zapopan, Jal. C.P. 45120'],
        phones: ['33 3647 8614', '33 3647 8664'],
      },
      {
        company: 'Grupo Kasto Molinos, S.A. de C.V.',
        place: 'Molino La Concepción',
        lines: ['Km 2.4 Carretera La Barca-Zalamea', 'La Barca, Jal. C.P. 47910'],
        phones: ['393 688 0554', '393 688 1483'],
      },
      {
        company: 'Harinera de Atotonilco, S.A. de C.V.',
        lines: ['Fco. Javier Mina No. 301', 'Atotonilco el Alto, Jal. C.P. 47750'],
        phones: ['391 917 0001', '391 917 2305'],
        web: 'https://www.harineradeatotonilco.com.mx/',
        social: [{ network: 'facebook', url: 'https://www.facebook.com/harineraatotonilco/' }],
      },
      {
        company: 'Cía. Harinera del Parayas, S.A. de C.V.',
        lines: ['Av. Vallarta No. 3998', 'Col. Juan Manuel Vallarta', 'Zapopan, Jal. C.P. 45120'],
        phones: ['33 3121 7100'],
        web: 'https://harineradelparayas.com.mx',
      },
    ],
    gallery: [
      { image: 'planta-guadalajara', caption: 'Planta Guadalajara' },
      { image: 'planta-central', caption: 'Planta Central' },
      { image: 'molino-la-concepcion', caption: 'Molino La Concepción' },
      { image: 'parayas', caption: 'Parayas' },
      { image: 'atotonilco', caption: 'Atotonilco' },
    ],
    highlights: [
      { value: '50', label: 'años en harinas' },
      { value: '10+', label: 'estados abastecidos' },
      { value: 'FSSC 22000', label: 'y Kosher en La Concepción' },
    ],
    region: 'Jalisco',
    legacyPage: 8,
    seo: {
      title: 'Molinos de trigo: harinas y subproductos de trigo',
      description:
        'Grupo Kasto Molinos produce harinas de trigo para panificación, tortilla, galleta, pizza e industria en Jalisco, con distribución a más de 10 estados. ISO 9001, HACCP, FSSC 22000 y Kosher.',
    },
  },
  {
    slug: 'pecuaria',
    name: 'División Pecuaria',
    short: 'Pecuaria',
    summary: 'Producción porcina y alimentos balanceados bajo ambientes controlados y seguros.',
    headline: 'Más de medio siglo en porcicultura.',
    intro: [
      'Con más de 50 años de experiencia en la porcicultura, Grupo Kasto continúa con la producción de ganado porcino en sus granjas, con procesos y prácticas innovadoras bajo ambientes controlados y seguros que le permiten vender su ganado a rastros TIF (Tipo Inspección Federal).',
    ],
    units: ['Agro Comercio San Juan', 'Folapsa'],
    unitsNote:
      'Adicionalmente, en esta división se fabrican y comercializan alimentos balanceados para la industria porcina y bovina, que cumplen con los más altos estándares de calidad.',
    directory: [
      {
        company: 'Agro Comercio San Juan, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo 410-6', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 0705'],
      },
      {
        company: 'Folap, S.A. de C.V.',
        lines: ['Blvd. Lázaro Cárdenas 1109', 'Col. Santa Fe', 'La Piedad, Mich. C.P. 59370'],
        phones: ['352 522 1350', '352 522 0580'],
        social: [{ network: 'facebook', url: 'https://www.facebook.com/pages/Folapsa/702257193210349' }],
      },
    ],
    gallery: [
      { image: 'folapsa', caption: 'Folapsa' },
      { image: 'granjas-1', caption: 'Granjas porcinas' },
      { image: 'granjas-2', caption: 'Granjas porcinas' },
      { image: 'folapsa-2', caption: 'Folapsa' },
      { image: 'granjas-3', caption: 'Granjas porcinas' },
      { image: 'folapsa-3', caption: 'Folapsa' },
    ],
    highlights: [
      { value: '63', label: 'años en porcicultura' },
      { value: 'TIF', label: 'venta a rastros certificados' },
      { value: '2', label: 'unidades de negocio' },
    ],
    region: 'Guanajuato · Michoacán',
    legacyPage: 9,
    seo: {
      title: 'División Pecuaria: porcicultura y alimentos balanceados',
      description:
        'Producción de ganado porcino para rastros TIF y alimentos balanceados para la industria porcina y bovina. Agro Comercio San Juan y Folapsa, en Guanajuato y Michoacán.',
    },
  },
  {
    slug: 'servicios',
    name: 'División Servicios',
    short: 'Servicios',
    summary: 'Abasto, logística, construcción, laboratorio y tecnología para la cadena de valor.',
    headline: 'El soporte que mueve a todo el grupo.',
    intro: [
      'El crecimiento sostenido de nuestra cadena de valor dio origen a empresas que cubren las necesidades de abasto, logística y soporte del resto de las unidades de negocio, ampliando la relación con clientes internos y externos.',
    ],
    units: [
      'Servicio Ciudad del Sol',
      'Regional de La Construcción (Recosa)',
      'Transportes Kasto',
      'Investigación y Desarrollo Grupo Kasto (IDGK)',
      'Multiservicios Profesionales GK',
    ],
    unitsNote:
      'Servicio Ciudad del Sol ofrece la mejor calidad en combustibles. Recosa, desde 1979, entrega los mejores productos para construcción, remodelación y decoración. IDGK es un centro de innovación con laboratorio analítico para evaluar las características físicas y químicas del trigo y las harinas. Multiservicios Profesionales GK es el brazo tecnológico y de consultoría del grupo, con procesos de TI maduros bajo ITIL y soporte técnico a clientes externos.',
    directory: [
      {
        company: 'Multiservicios Profesionales GK, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo 410-1', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 1939'],
      },
      {
        company: 'Investigación y Desarrollo GK, S.A. de C.V.',
        lines: ['Av. Abedules 414', 'Rinconada Santa Rita', 'Zapopan, Jal. C.P. 45120'],
        phones: ['33 3813 4281'],
      },
      {
        company: 'Servicios Ciudad del Sol, S.A. de C.V.',
        lines: ['Av. Michoacán No. 475', 'Col. Ciudad del Sol', 'La Piedad, Mich. C.P. 59310'],
        phones: ['352 526 6269'],
      },
      {
        company: 'Transportes Kasto, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo No. 410-4', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 1340', '352 522 5571'],
      },
      {
        company: 'Regional de La Construcción, S.A. de C.V.',
        lines: ['Blvd. Lázaro Cárdenas No. 1111', 'Col. Santa Fe', 'La Piedad, Mich. C.P. 59370'],
        phones: ['352 526 1350', '352 526 1050'],
        web: 'http://recosa.mx/',
        social: [{ network: 'facebook', url: 'https://www.facebook.com/RecosaOficial/' }],
      },
    ],
    gallery: [
      { image: 'ciudad-del-sol', caption: 'Servicio Ciudad del Sol' },
      { image: 'recosa', caption: 'Recosa' },
      { image: 'transportes-kasto', caption: 'Transportes Kasto' },
      { image: 'idgk', caption: 'Investigación y Desarrollo GK' },
      { image: 'multiservicios', caption: 'Multiservicios Profesionales GK' },
    ],
    highlights: [
      { value: '5', label: 'empresas de soporte' },
      { value: '1979', label: 'Recosa desde' },
      { value: 'ITIL', label: 'procesos de TI' },
    ],
    region: 'Guanajuato · Michoacán · Jalisco',
    legacyPage: 13,
    seo: {
      title: 'División Servicios: logística, construcción, laboratorio y TI',
      description:
        'Combustibles, materiales de construcción (Recosa), transporte, laboratorio de trigo y harinas (IDGK) y tecnología y consultoría (Multiservicios Profesionales GK).',
    },
  },
  {
    slug: 'invernaderos',
    name: 'División Invernaderos',
    short: 'Invernaderos',
    summary: 'Vegetales de invernadero hidropónico de alta tecnología para exportación.',
    headline: 'El invernadero más grande del país.',
    intro: [
      'Grupo Kasto cuenta con participación accionaria en el segmento de invernaderos, con instalaciones en Guanajuato y Michoacán cuyo mercado principal es la exportación a Estados Unidos y Canadá. Producimos vegetales bajo un sistema hidropónico de alta tecnología: el invernadero más grande del país y uno de los más grandes de su tipo en América Latina.',
      'Los productos de esta unidad de negocio se comercializan a través de Red Sun Farms.',
    ],
    units: ['Agrícola El Rosal', 'Naturbell', 'Plantfort', 'San Miguel Red Sun Farms', 'Biotech', 'Red Sun Farms Norteamérica'],
    unitsNote:
      'Damos especial atención a la fitosanidad y la bioseguridad desde la adquisición de la semilla hasta la entrega del producto en el canal de comercialización. Nuestros principales productos son el tomate en racimo, el pimiento morrón y otros tipos de pimiento, el pepino y la berenjena.',
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
    gallery: [
      { image: 'red-sun-farms-1', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-2', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-3', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-4', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-5', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-6', caption: 'Red Sun Farms' },
      { image: 'red-sun-farms-7', caption: 'Red Sun Farms' },
    ],
    highlights: [
      { value: 'N.º 1', label: 'invernadero más grande de México' },
      { value: 'EUA · CAN', label: 'mercados de exportación' },
      { value: '6', label: 'unidades de negocio' },
    ],
    region: 'Guanajuato · Michoacán',
    legacyPage: 10,
    seo: {
      title: 'Invernaderos: hortalizas hidropónicas de exportación',
      description:
        'Tomate en racimo, pimiento, pepino y berenjena de invernadero hidropónico de alta tecnología en Guanajuato y Michoacán, exportados a EUA y Canadá a través de Red Sun Farms.',
    },
  },
  {
    slug: 'panaderia-y-bistro',
    name: 'Panadería y bistró',
    short: 'Panadería y bistró',
    summary: 'Ohlala! Boulangerie Bistrot: panadería artesanal francesa en Guadalajara.',
    headline: 'El sabor de la panadería artesanal francesa.',
    intro: [
      'Desde 2017, Grupo Kasto participa en el sector de panadería y bistró a través de su asociación con Ohlala! Boulangerie Bistrot, que ofrece el sabor de la panadería artesanal francesa en México y un espacio cálido y casual para disfrutar de sus productos.',
    ],
    units: ['Operadora Ohlala', 'Productora de Alimentos Oh'],
    unitsNote:
      'La división cuenta con una panificadora industrial y 11 establecimientos en la zona metropolitana de Guadalajara: La Estancia, La Rioja, Providencia, Monraz, Naciones Unidas, Chapalita, Libertad, Valle Real, San Isidro, Punto Faro y Plan de San Luis.',
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
      {
        company: 'Productora de Alimentos Oh, S.A. de C.V.',
        lines: ['Anillo Perif. Nte. Manuel Gómez Morín 6650, Bodega 1', 'Col. Miramar', 'Zapopan, Jal. C.P. 45060'],
        phones: ['33 3040 9091'],
      },
    ],
    gallery: [
      { image: 'ohlala-1', caption: 'Operadora Ohlala' },
      { image: 'productora-1', caption: 'Productora de Alimentos Oh' },
      { image: 'ohlala-2', caption: 'Operadora Ohlala' },
      { image: 'productora-2', caption: 'Productora de Alimentos Oh' },
      { image: 'ohlala-3', caption: 'Operadora Ohlala' },
      { image: 'productora-3', caption: 'Productora de Alimentos Oh' },
      { image: 'ohlala-4', caption: 'Operadora Ohlala' },
      { image: 'productora-4', caption: 'Productora de Alimentos Oh' },
    ],
    highlights: [
      { value: '11', label: 'sucursales en Guadalajara' },
      { value: '1', label: 'panificadora industrial' },
      { value: '2017', label: 'socios desde' },
    ],
    region: 'Zona metropolitana de Guadalajara',
    legacyPage: 4,
    seo: {
      title: 'Panadería y bistró: Ohlala! Boulangerie Bistrot',
      description:
        'Grupo Kasto participa desde 2017 en Ohlala! Boulangerie Bistrot: panadería artesanal francesa con 11 sucursales y una panificadora industrial en Guadalajara.',
    },
  },
  {
    slug: 'productos-de-consumo',
    name: 'División Productos de consumo',
    short: 'Productos de consumo',
    summary: 'Distribución de abarrotes con cobertura del 90 % de la República Mexicana.',
    headline: 'Cerca del consumidor, en todo México.',
    intro: [
      'Grupo Kasto participa en el sector abarrotero: distribuye y vende productos de consumo a través de cuatro canales —mayoreo o preventa, mostradores o cash & carry, distribución asistida o venta horizontal, y autoservicio o tiendas de conveniencia— que nos permiten llegar al consumidor final con una cobertura del 90 % de la República Mexicana.',
    ],
    units: ['Productos de Consumo “Z”', 'Abarrotes Monterrey'],
    unitsNote:
      'Entendemos la importancia del abasto oportuno de nuestros clientes; por eso atendemos también al mercado institucional —hoteles, restaurantes y hospitales— a través de telemarketing y venta directa.',
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
    gallery: [
      { image: 'pcz-1', caption: 'Productos de Consumo Z' },
      { image: 'pcz-2', caption: 'Productos de Consumo Z' },
      { image: 'pcz-3', caption: 'Productos de Consumo Z' },
      { image: 'pcz-4', caption: 'Productos de Consumo Z' },
    ],
    highlights: [
      { value: '90 %', label: 'cobertura nacional' },
      { value: '4', label: 'canales de venta' },
      { value: '33', label: 'años en consumo' },
    ],
    region: 'Cobertura nacional',
    legacyPage: 14,
    seo: {
      title: 'Productos de consumo: distribución de abarrotes',
      description:
        'Productos de Consumo “Z” y Abarrotes Monterrey: mayoreo, cash & carry, venta horizontal y autoservicio con cobertura del 90 % de la República Mexicana.',
    },
  },
  {
    slug: 'promotora-de-inversion',
    name: 'Promotora de inversión',
    short: 'Promotora de inversión',
    summary: 'Fomento y desarrollo de nuevas inversiones y oportunidades de negocio.',
    headline: 'Invertimos en el futuro de nuestras regiones.',
    intro: [
      'Esta división tiene como objetivo el fomento, la promoción y el desarrollo de nuevas inversiones, ya sea en las divisiones existentes o en la creación de nuevas empresas y oportunidades de negocio.',
    ],
    units: ['Desarrollo Inmobiliario Kasto'],
    unitsNote:
      'A través de Desarrollo Inmobiliario Kasto fortalecemos nuestro portafolio de negocios y, a la vez, promovemos el desarrollo de los estados donde tenemos presencia.',
    directory: [
      {
        company: 'Desarrollo Inmobiliario Kasto, S.A. de C.V.',
        lines: ['Av. Padre Hidalgo No. 410-2', 'Centro', 'Santa Ana Pacueco, Gto. C.P. 36910'],
        phones: ['352 526 1939', '352 526 0705'],
      },
    ],
    gallery: [
      { image: 'dik-1', caption: 'Desarrollo Inmobiliario Kasto' },
      { image: 'dik-2', caption: 'Desarrollo Inmobiliario Kasto' },
      { image: 'dik-3', caption: 'Desarrollo Inmobiliario Kasto' },
      { image: 'dik-4', caption: 'Desarrollo Inmobiliario Kasto' },
    ],
    highlights: [
      { value: '1', label: 'unidad de negocio' },
      { value: 'Bajío', label: 'y Occidente' },
      { value: 'Ganar-ganar', label: 'con socios comerciales' },
    ],
    region: 'Bajío y Occidente',
    legacyPage: 15,
    seo: {
      title: 'Promotora de inversión: desarrollo inmobiliario y nuevos negocios',
      description:
        'Fomento, promoción y desarrollo de nuevas inversiones y proyectos inmobiliarios de Grupo Kasto a través de Desarrollo Inmobiliario Kasto.',
    },
  },
];

export const divisionBySlug = (slug: string) => divisions.find((d) => d.slug === slug);
