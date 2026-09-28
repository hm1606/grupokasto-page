// Modelo de Sostenibilidad de Grupo Kasto (2024), en español e inglés. Fuente: página "Sostenibilidad" del sitio
// anterior y el documento completo, que se CONSULTA en la página pero no se descarga: sus láminas están como imágenes
// en src/assets/sostenibilidad/modelo/pagina-NN.jpg (se generan del PDF con scripts/model-pages.py; el PDF no se publica).
import type { T } from '../i18n/ui';

export const background: T[] = [
  {
    es: 'En 2021, impulsados por el movimiento mundial “Un Día para Dar”, cerramos filas en torno a la donación de sangre: uno de nuestros primeros esfuerzos coordinados con organizaciones de la sociedad civil, al que se sumaron colaboradores como voluntarios.',
    en: 'In 2021, inspired by the global “Giving Day” movement, we rallied around blood donation: one of our first coordinated efforts with civil-society organizations, joined by employee volunteers.',
  },
  {
    es: 'Desde nuestros inicios hemos hecho importantes esfuerzos con nuestra comunidad, el medio ambiente y nuestros colaboradores, pero somos conscientes de la institucionalización y formalización que requieren ciertos procesos. En 2023 realizamos un Diagnóstico de Sostenibilidad en la División Molinos de trigo que nos mostró lo que hacemos muy bien, nuestras áreas de oportunidad y las acciones que ya podemos implementar.',
    en: 'Since our beginnings we have made significant efforts for our community, the environment and our people, but we know some processes need to be institutionalized and formalized. In 2023 we carried out a Sustainability Assessment in the Flour Mills Division that showed what we do well, where we can improve and which actions we can already take.',
  },
  {
    es: 'A principios de 2024 iniciamos formalmente el proyecto “Grupo Kasto rumbo a la Sostenibilidad”, un plan estratégico que integra los criterios ASG (Ambiental, Social y Gobernanza) a la operación cotidiana mediante políticas, procedimientos y acciones puntuales que se integran a nuestra cultura empresarial.',
    en: 'In early 2024 we formally launched “Grupo Kasto on the Road to Sustainability”, a strategic plan that brings ESG (Environmental, Social and Governance) criteria into daily operations through policies, procedures and specific actions that become part of our corporate culture.',
  },
];

export const milestones: { year: string; title: T }[] = [
  { year: '2021', title: { es: 'Un Día para Dar', en: 'Giving Day' } },
  { year: '2023', title: { es: 'Diagnóstico de Sostenibilidad', en: 'Sustainability Assessment' } },
  { year: '2024', title: { es: 'Rumbo a la Sostenibilidad', en: 'On the Road to Sustainability' } },
];

export const context: T[] = [
  {
    es: 'El Consejo de Administración, directivos y colaboradores estamos convencidos de que las iniciativas de sostenibilidad llevan a nuestra organización a un nivel de compromiso que permitirá la permanencia del negocio en el tiempo.',
    en: 'Our Board of Directors, executives and employees are convinced that sustainability initiatives bring our organization to a level of commitment that will ensure the business endures over time.',
  },
  {
    es: 'Actuar con base en los criterios ASG nos permite impactar más y mejor a nuestros grupos de interés, contar con mayor rentabilidad y generar un impacto positivo en la sociedad y el medio ambiente.',
    en: 'Acting on ESG criteria lets us have a greater, better impact on our stakeholders, be more profitable and create a positive impact on society and the environment.',
  },
];

export const contextQuote: T = {
  es: 'Este Modelo nos permite focalizar de manera estratégica nuestro tiempo, talento y recursos en las metas de corto, mediano y largo plazo.',
  en: 'This Model lets us strategically focus our time, talent and resources on short-, medium- and long-term goals.',
};

export const materiality: T = {
  es: 'Para elaborar el Modelo realizamos un análisis documental —presentaciones institucionales, políticas y procedimientos— y un diagnóstico con entrevistas y encuestas a directivos y colaboradores. La matriz está alineada con los Objetivos de Desarrollo Sostenible de la ONU y con los criterios ASG.',
  en: 'To build the Model we reviewed institutional presentations, policies and procedures, and ran an assessment with interviews and surveys of executives and employees. The matrix is aligned with the UN Sustainable Development Goals and with ESG criteria.',
};

export type Pillar = {
  id: 'ambiental' | 'social' | 'gobernanza';
  name: T;
  topics: { name: T; text: T }[];
  scopes: { name: T; text: T; objectives: T[] }[];
};

export const pillars: Pillar[] = [
  {
    id: 'ambiental',
    name: { es: 'Ambiental', en: 'Environmental' },
    topics: [
      { name: { es: 'Descarbonización y reducción de consumos', en: 'Decarbonization and lower consumption' }, text: { es: 'Medimos y reducimos las emisiones de gases de efecto invernadero y el resto de los energéticos que usamos en nuestros procesos.', en: 'We measure and reduce greenhouse gas emissions and the rest of the energy we use in our processes.' } },
      { name: { es: 'Economía circular y gestión de residuos', en: 'Circular economy and waste management' }, text: { es: 'Aceleramos un modelo de economía circular que prioriza el cuidado de los recursos, su disposición final y la extensión de su vida útil.', en: 'We are accelerating a circular-economy model that prioritizes resource care, proper disposal and longer useful life.' } },
      { name: { es: 'Cultura ambiental', en: 'Environmental culture' }, text: { es: 'Generamos conciencia sobre el uso de los recursos y el respeto al medio ambiente, dentro de la empresa y con nuestros grupos de interés.', en: 'We raise awareness about resource use and respect for the environment, inside the company and with our stakeholders.' } },
      { name: { es: 'Gestión sostenible del agua', en: 'Sustainable water management' }, text: { es: 'Usamos el agua de manera responsable y eficiente, sin comprometer a las futuras generaciones.', en: 'We use water responsibly and efficiently, without compromising future generations.' } },
      { name: { es: 'Agricultura sostenible y regenerativa', en: 'Sustainable, regenerative agriculture' }, text: { es: 'Impulsamos procesos que regeneran y restauran la fertilidad del suelo, mejoran la biodiversidad y la resiliencia climática.', en: 'We promote practices that regenerate and restore soil fertility and improve biodiversity and climate resilience.' } },
    ],
    scopes: [
      { name: { es: 'Acción climática', en: 'Climate action' }, text: { es: 'Medidas urgentes en nuestros procesos y operaciones para combatir los efectos del cambio climático.', en: 'Urgent measures in our processes and operations to fight the effects of climate change.' }, objectives: [{ es: 'Impulsar la transición a una economía baja en carbono.', en: 'Drive the transition to a low-carbon economy.' }] },
      { name: { es: 'Recursos naturales', en: 'Natural resources' }, text: { es: 'Uso responsable de los recursos naturales y acciones de cuidado, uso eficiente y reúso.', en: 'Responsible use of natural resources and actions for their care, efficient use and reuse.' }, objectives: [{ es: 'Promover acciones que protegen, conservan y restauran los ecosistemas.', en: 'Promote actions that protect, conserve and restore ecosystems.' }, { es: 'Invertir en infraestructura de saneamiento para proteger y restablecer los ecosistemas relacionados con el agua.', en: 'Invest in sanitation infrastructure to protect and restore water-related ecosystems.' }] },
      { name: { es: 'Energía limpia y renovable', en: 'Clean, renewable energy' }, text: { es: 'Activos con tecnologías limpias, renovables y responsables con el medio ambiente.', en: 'Assets that use clean, renewable, environmentally responsible technologies.' }, objectives: [{ es: 'Promover la transición energética hacia energías y tecnologías limpias y renovables.', en: 'Promote the energy transition toward clean, renewable energy and technology.' }] },
      { name: { es: 'Cultura ambiental', en: 'Environmental culture' }, text: { es: 'Iniciativas para que colaboradores y grupos de interés sean generadores de cambios positivos.', en: 'Initiatives so employees and stakeholders become drivers of positive change.' }, objectives: [{ es: 'Promover una cultura de cuidado del medio ambiente entre colaboradores y grupos de interés.', en: 'Promote a culture of environmental care among employees and stakeholders.' }] },
    ],
  },
  {
    id: 'social',
    name: { es: 'Social', en: 'Social' },
    topics: [
      { name: { es: 'Bienestar de los colaboradores y sus familias', en: 'Well-being of employees and their families' }, text: { es: 'Respeto a los derechos humanos, dignidad, salud y equilibrio entre la vida laboral y personal.', en: 'Respect for human rights, dignity, health and work-life balance.' } },
      { name: { es: 'Sentido humano', en: 'Human touch' }, text: { es: 'Un estilo de trabajo respetuoso, inclusivo y con comunicación constante, con orgullo y sentido de pertenencia.', en: 'A respectful, inclusive way of working with constant communication, pride and a sense of belonging.' } },
      { name: { es: 'Atracción, cuidado y desarrollo del talento', en: 'Attracting, caring for and developing talent' }, text: { es: 'Un ambiente laboral de calidad, retador, diverso, inclusivo, humano y seguro.', en: 'A quality, challenging, diverse, inclusive, humane and safe workplace.' } },
      { name: { es: 'Formación de comunidades rurales', en: 'Training for rural communities' }, text: { es: 'Capacitaciones y programas que fortalecen competencias técnicas en las comunidades productoras.', en: 'Training and programs that build technical skills in farming communities.' } },
      { name: { es: 'Compromiso con el entorno', en: 'Commitment to our surroundings' }, text: { es: 'Alianzas con organizaciones de la sociedad civil para el desarrollo de nuestras comunidades.', en: 'Partnerships with civil-society organizations for the development of our communities.' } },
      { name: { es: 'Alimentación sostenible', en: 'Sustainable food' }, text: { es: 'Una alimentación de bajo impacto ambiental que contribuye a la seguridad alimentaria y nutricional.', en: 'Low-impact food that contributes to food and nutrition security.' } },
    ],
    scopes: [
      { name: { es: 'Nuestra gente', en: 'Our people' }, text: { es: 'Bienestar y desarrollo integral de nuestra gente, con beneficio extensivo a sus familias.', en: 'The well-being and integral development of our people, extending the benefit to their families.' }, objectives: [{ es: 'Asegurar y promover el respeto de los derechos humanos de todos nuestros grupos de interés.', en: 'Ensure and promote respect for the human rights of all our stakeholders.' }, { es: 'Cuidar la salud y promover el bienestar de colaboradores y sus familias.', en: 'Care for the health and promote the well-being of employees and their families.' }] },
      { name: { es: 'Liderazgo y crecimiento', en: 'Leadership and growth' }, text: { es: 'Formación de conocimientos, competencias y liderazgo positivo.', en: 'Building knowledge, skills and positive leadership.' }, objectives: [{ es: 'Desarrollar y fortalecer el talento para su crecimiento.', en: 'Develop and strengthen talent for growth.' }, { es: 'Adaptar nuestros procesos a los cambios generacionales.', en: 'Adapt our processes to generational change.' }, { es: 'Incorporar y promover al mejor talento.', en: 'Hire and promote the best talent.' }] },
      { name: { es: 'Seguridad y comunidades resilientes', en: 'Safety and resilient communities' }, text: { es: 'Vinculación con la cadena de valor para mejorar la inocuidad alimentaria y el capital social de pequeños productores.', en: 'Working with our value chain to improve food safety and the social capital of smallholder farmers.' }, objectives: [{ es: 'Desarrollar más y mejor a los productores de nuestra cadena de valor.', en: 'Develop the growers in our value chain further and better.' }, { es: 'Participar en redes que promuevan el desarrollo comunitario.', en: 'Take part in networks that promote community development.' }, { es: 'Reducir los riesgos de operación.', en: 'Reduce operational risks.' }] },
      { name: { es: 'Nuestro entorno', en: 'Our surroundings' }, text: { es: 'Iniciativas con organizaciones profesionales por una mejor sociedad.', en: 'Initiatives with professional organizations for a better society.' }, objectives: [{ es: 'Impulsar iniciativas en beneficio de nuestra sociedad.', en: 'Drive initiatives that benefit our society.' }, { es: 'Participar con organizaciones que promuevan el desarrollo del entorno.', en: 'Work with organizations that promote local development.' }] },
      { name: { es: 'Seguridad alimentaria', en: 'Food security' }, text: { es: 'Acceso justo a alimentos suficientes, inocuos y nutritivos.', en: 'Fair access to sufficient, safe and nutritious food.' }, objectives: [{ es: 'Participar en esfuerzos que promuevan el acceso justo y equitativo a una alimentación balanceada.', en: 'Support efforts that promote fair, equitable access to a balanced diet.' }] },
    ],
  },
  {
    id: 'gobernanza',
    name: { es: 'Gobernanza', en: 'Governance' },
    topics: [
      { name: { es: 'Gobierno corporativo', en: 'Corporate governance' }, text: { es: 'Transparencia, rendición de cuentas y cumplimiento de leyes y normativas.', en: 'Transparency, accountability and compliance with laws and regulations.' } },
      { name: { es: 'Cultura de la legalidad', en: 'Culture of lawfulness' }, text: { es: 'La vivencia de nuestros valores rige todas nuestras acciones y conductas.', en: 'Living our values guides all our actions and conduct.' } },
      { name: { es: 'Adaptación y transformación tecnológica', en: 'Technological adaptation and transformation' }, text: { es: 'Aprovechamos la tecnología para atender en tiempo real las necesidades de nuestros clientes.', en: 'We use technology to meet our customers’ needs in real time.' } },
      { name: { es: 'Productos y servicios', en: 'Products and services' }, text: { es: 'La más alta calidad, con un servicio completo e integral.', en: 'The highest quality, with complete, comprehensive service.' } },
      { name: { es: 'Entorno global', en: 'Global environment' }, text: { es: 'Revisión, evolución y adaptación constantes a un entorno cambiante.', en: 'Constant review, evolution and adaptation to a changing environment.' } },
      { name: { es: 'Compromisos con los grupos de interés', en: 'Commitments to stakeholders' }, text: { es: 'Mecanismos de comunicación en ambas vías para recibir retroalimentación constante.', en: 'Two-way communication channels for constant feedback.' } },
      { name: { es: 'Innovación', en: 'Innovation' }, text: { es: 'Nuevas estrategias, productos y servicios para potenciar el desarrollo de nuestros clientes.', en: 'New strategies, products and services that boost our customers’ growth.' } },
    ],
    scopes: [
      { name: { es: 'Cultura de integridad', en: 'Culture of integrity' }, text: { es: 'Relaciones de confianza, liderazgos conscientes y una cultura ética y de cumplimiento.', en: 'Relationships of trust, conscious leadership and a culture of ethics and compliance.' }, objectives: [{ es: 'Garantizar la legalidad y transparencia de nuestras operaciones.', en: 'Guarantee the lawfulness and transparency of our operations.' }, { es: 'Promover la cultura de la legalidad a través de nuestros valores éticos.', en: 'Promote a culture of lawfulness through our ethical values.' }, { es: 'Fortalecer la rendición de cuentas: medir, evaluar y documentar nuestras acciones.', en: 'Strengthen accountability: measure, evaluate and document our actions.' }] },
      { name: { es: 'Transformación tecnológica', en: 'Technological transformation' }, text: { es: 'Tecnologías digitales para decidir mejor en todos los niveles, protegiendo la información.', en: 'Digital technologies for better decisions at every level, while protecting information.' }, objectives: [{ es: 'Eficientar y facilitar nuestros procesos a través de la tecnología.', en: 'Make our processes more efficient and easier through technology.' }, { es: 'Analizar y adoptar procesos tecnológicos como la inteligencia artificial.', en: 'Analyze and adopt technologies such as artificial intelligence.' }, { es: 'Cuidar y proteger la información de todos nuestros grupos de interés.', en: 'Care for and protect the information of all our stakeholders.' }] },
      { name: { es: 'Innovación', en: 'Innovation' }, text: { es: 'Mejora continua e ideas que se transforman en productos o servicios novedosos.', en: 'Continuous improvement and ideas that become new products or services.' }, objectives: [{ es: 'Facilitar espacios para aportar ideas que revolucionen nuestros procesos.', en: 'Create spaces for ideas that revolutionize our processes.' }, { es: 'Invertir en PYMES y ayudarlas a crecer en lo económico, social y ambiental.', en: 'Invest in small and medium-sized businesses and help them grow economically, socially and environmentally.' }] },
    ],
  },
];

/** Objetivos de Desarrollo Sostenible de la ONU con los que se alinea el Modelo */
export const sdgs: { n: number; name: T; image: string; goal: T }[] = [
  { n: 2, name: { es: 'Hambre cero', en: 'Zero hunger' }, image: 'ods-2', goal: { es: 'Participar en esfuerzos que promuevan el acceso justo y equitativo a una alimentación balanceada.', en: 'Support efforts that promote fair, equitable access to a balanced diet.' } },
  { n: 3, name: { es: 'Salud y bienestar', en: 'Good health and well-being' }, image: 'ods-4', goal: { es: 'Cuidar la salud y promover el bienestar de colaboradores y sus familias.', en: 'Care for the health and well-being of employees and their families.' } },
  { n: 4, name: { es: 'Educación de calidad', en: 'Quality education' }, image: 'ods-5', goal: { es: 'Desarrollar y fortalecer el talento; adaptar nuestros procesos a los cambios generacionales.', en: 'Develop and strengthen talent; adapt our processes to generational change.' } },
  { n: 6, name: { es: 'Agua limpia y saneamiento', en: 'Clean water and sanitation' }, image: 'ods-6', goal: { es: 'Invertir en saneamiento y apoyar a pequeños productores en el cuidado del agua.', en: 'Invest in sanitation and help smallholder farmers care for water.' } },
  { n: 7, name: { es: 'Energía asequible y no contaminante', en: 'Affordable and clean energy' }, image: 'ods-8', goal: { es: 'Promover la transición hacia energías limpias y renovables.', en: 'Promote the transition to clean, renewable energy.' } },
  { n: 8, name: { es: 'Trabajo decente y crecimiento económico', en: 'Decent work and economic growth' }, image: 'ods-9', goal: { es: 'Asegurar el respeto de los derechos humanos y gestionar riesgos con innovación y tecnología.', en: 'Ensure respect for human rights and manage risks with innovation and technology.' } },
  { n: 9, name: { es: 'Industria, innovación e infraestructura', en: 'Industry, innovation and infrastructure' }, image: 'ods-11', goal: { es: 'Aportar ideas que revolucionen nuestros procesos e invertir en PYMES.', en: 'Bring ideas that revolutionize our processes and invest in small businesses.' } },
  { n: 12, name: { es: 'Producción y consumo responsables', en: 'Responsible consumption and production' }, image: 'ods-12', goal: { es: 'Desarrollar a los productores de nuestra cadena de valor y participar en redes comunitarias.', en: 'Develop the growers in our value chain and take part in community networks.' } },
  { n: 15, name: { es: 'Vida de ecosistemas terrestres', en: 'Life on land' }, image: 'ods-13', goal: { es: 'Promover acciones que protegen, conservan y restauran los ecosistemas.', en: 'Promote actions that protect, conserve and restore ecosystems.' } },
  { n: 16, name: { es: 'Paz, justicia e instituciones sólidas', en: 'Peace, justice and strong institutions' }, image: 'ods-14', goal: { es: 'Garantizar la legalidad y la transparencia; prevenir el fraude y la corrupción.', en: 'Guarantee lawfulness and transparency; prevent fraud and corruption.' } },
];

export const stakeholders: { name: T; text: T }[] = [
  { name: { es: 'Accionistas', en: 'Shareholders' }, text: { es: 'Rendimos cuentas y trabajamos para asegurar y vigilar el retorno de la inversión.', en: 'We are accountable and work to secure and oversee the return on investment.' } },
  { name: { es: 'Colaboradores', en: 'Employees' }, text: { es: 'Las personas del grupo son el motor diario del desarrollo de las empresas.', en: 'Our people are the daily engine of our companies’ growth.' } },
  { name: { es: 'Clientes', en: 'Customers' }, text: { es: 'Ofrecemos los mejores productos y servicios; cumplimos y superamos expectativas.', en: 'We offer the best products and services and meet and exceed expectations.' } },
  { name: { es: 'Productores', en: 'Growers' }, text: { es: 'Además de proveedores, son personas clave de nuestra cadena de valor.', en: 'More than suppliers, they are key people in our value chain.' } },
  { name: { es: 'Proveedores', en: 'Suppliers' }, text: { es: 'Fortalecemos las capacidades de nuestra cadena de valor para crecer juntos.', en: 'We strengthen our value chain’s capabilities so we grow together.' } },
  { name: { es: 'Gobiernos', en: 'Governments' }, text: { es: 'Cumplimos las normas y leyes de los diversos niveles de gobierno.', en: 'We comply with the rules and laws of every level of government.' } },
  { name: { es: 'Competencia', en: 'Competitors' }, text: { es: 'Promovemos la sana competencia: nos reta y motiva a mejorar.', en: 'We promote fair competition: it challenges and motivates us to improve.' } },
  { name: { es: 'Comunidad', en: 'Community' }, text: { es: 'Desde nuestros inicios, nuestro entorno ha sido clave de nuestro crecimiento.', en: 'Since our beginnings, our community has been key to our growth.' } },
];
