// Modelo de Sostenibilidad de Grupo Kasto (2024). Fuente: página "Sostenibilidad" del sitio anterior
// y el PDF public/docs/modelo-de-sostenibilidad-grupo-kasto.pdf.

export const pdf = '/docs/modelo-de-sostenibilidad-grupo-kasto.pdf';

export const background = [
  'En 2021, impulsados por el movimiento mundial “Un Día para Dar”, cerramos filas en torno a la donación de sangre: uno de nuestros primeros esfuerzos coordinados con organizaciones de la sociedad civil, al que se sumaron colaboradores como voluntarios.',
  'Desde nuestros inicios hemos hecho importantes esfuerzos con nuestra comunidad, el medio ambiente y nuestros colaboradores, pero somos conscientes de la institucionalización y formalización que requieren ciertos procesos. En 2023 realizamos un Diagnóstico de Sostenibilidad en la División Molinos de trigo que nos mostró lo que hacemos muy bien, nuestras áreas de oportunidad y las acciones que ya podemos implementar.',
  'A principios de 2024 iniciamos formalmente el proyecto “Grupo Kasto rumbo a la Sostenibilidad”, un plan estratégico que integra los criterios ASG (Ambiental, Social y Gobernanza) a la operación cotidiana mediante políticas, procedimientos y acciones puntuales que se integran a nuestra cultura empresarial.',
];

export const context = [
  'El Consejo de Administración, directivos y colaboradores estamos convencidos de que las iniciativas de sostenibilidad llevan a nuestra organización a un nivel de compromiso que permitirá la permanencia del negocio en el tiempo.',
  'Actuar con base en los criterios ASG nos permite impactar más y mejor a nuestros grupos de interés, contar con mayor rentabilidad y generar un impacto positivo en la sociedad y el medio ambiente.',
];

export const materiality =
  'Para elaborar el Modelo realizamos un análisis documental —presentaciones institucionales, políticas y procedimientos— y un diagnóstico con entrevistas y encuestas a directivos y colaboradores. La matriz está alineada con los Objetivos de Desarrollo Sostenible de la ONU y con los criterios ASG.';

export type Pillar = {
  id: 'ambiental' | 'social' | 'gobernanza';
  name: string;
  topics: { name: string; text: string }[];
  scopes: { name: string; text: string; objectives: string[] }[];
};

export const pillars: Pillar[] = [
  {
    id: 'ambiental',
    name: 'Ambiental',
    topics: [
      { name: 'Descarbonización y reducción de consumos', text: 'Medimos y reducimos las emisiones de gases de efecto invernadero y el resto de los energéticos que usamos en nuestros procesos.' },
      { name: 'Economía circular y gestión de residuos', text: 'Aceleramos un modelo de economía circular que prioriza el cuidado de los recursos, su disposición final y la extensión de su vida útil.' },
      { name: 'Cultura ambiental', text: 'Generamos conciencia sobre el uso de los recursos y el respeto al medio ambiente, dentro de la empresa y con nuestros grupos de interés.' },
      { name: 'Gestión sostenible del agua', text: 'Usamos el agua de manera responsable y eficiente, sin comprometer a las futuras generaciones.' },
      { name: 'Agricultura sostenible y regenerativa', text: 'Impulsamos procesos que regeneran y restauran la fertilidad del suelo, mejoran la biodiversidad y la resiliencia climática.' },
    ],
    scopes: [
      { name: 'Acción climática', text: 'Medidas urgentes en nuestros procesos y operaciones para combatir los efectos del cambio climático.', objectives: ['Impulsar la transición a una economía baja en carbono.'] },
      { name: 'Recursos naturales', text: 'Uso responsable de los recursos naturales y acciones de cuidado, uso eficiente y reúso.', objectives: ['Promover acciones que protegen, conservan y restauran los ecosistemas.', 'Invertir en infraestructura de saneamiento para proteger y restablecer los ecosistemas relacionados con el agua.'] },
      { name: 'Energía limpia y renovable', text: 'Activos con tecnologías limpias, renovables y responsables con el medio ambiente.', objectives: ['Promover la transición energética hacia energías y tecnologías limpias y renovables.'] },
      { name: 'Cultura ambiental', text: 'Iniciativas para que colaboradores y grupos de interés sean generadores de cambios positivos.', objectives: ['Promover una cultura de cuidado del medio ambiente entre colaboradores y grupos de interés.'] },
    ],
  },
  {
    id: 'social',
    name: 'Social',
    topics: [
      { name: 'Bienestar de los colaboradores y sus familias', text: 'Respeto a los derechos humanos, dignidad, salud y equilibrio entre la vida laboral y personal.' },
      { name: 'Sentido humano', text: 'Un estilo de trabajo respetuoso, inclusivo y con comunicación constante, con orgullo y sentido de pertenencia.' },
      { name: 'Atracción, cuidado y desarrollo del talento', text: 'Un ambiente laboral de calidad, retador, diverso, inclusivo, humano y seguro.' },
      { name: 'Formación de comunidades rurales', text: 'Capacitaciones y programas que fortalecen competencias técnicas en las comunidades productoras.' },
      { name: 'Compromiso con el entorno', text: 'Alianzas con organizaciones de la sociedad civil para el desarrollo de nuestras comunidades.' },
      { name: 'Alimentación sostenible', text: 'Una alimentación de bajo impacto ambiental que contribuye a la seguridad alimentaria y nutricional.' },
    ],
    scopes: [
      { name: 'Nuestra gente', text: 'Bienestar y desarrollo integral de nuestra gente, con beneficio extensivo a sus familias.', objectives: ['Asegurar y promover el respeto de los derechos humanos de todos nuestros grupos de interés.', 'Cuidar la salud y promover el bienestar de colaboradores y sus familias.'] },
      { name: 'Liderazgo y crecimiento', text: 'Formación de conocimientos, competencias y liderazgo positivo.', objectives: ['Desarrollar y fortalecer el talento para su crecimiento.', 'Adaptar nuestros procesos a los cambios generacionales.', 'Incorporar y promover al mejor talento.'] },
      { name: 'Seguridad y comunidades resilientes', text: 'Vinculación con la cadena de valor para mejorar la inocuidad alimentaria y el capital social de pequeños productores.', objectives: ['Desarrollar más y mejor a los productores de nuestra cadena de valor.', 'Participar en redes que promuevan el desarrollo comunitario.', 'Reducir los riesgos de operación.'] },
      { name: 'Nuestro entorno', text: 'Iniciativas con organizaciones profesionales por una mejor sociedad.', objectives: ['Impulsar iniciativas en beneficio de nuestra sociedad.', 'Participar con organizaciones que promuevan el desarrollo del entorno.'] },
      { name: 'Seguridad alimentaria', text: 'Acceso justo a alimentos suficientes, inocuos y nutritivos.', objectives: ['Participar en esfuerzos que promuevan el acceso justo y equitativo a una alimentación balanceada.'] },
    ],
  },
  {
    id: 'gobernanza',
    name: 'Gobernanza',
    topics: [
      { name: 'Gobierno corporativo', text: 'Transparencia, rendición de cuentas y cumplimiento de leyes y normativas.' },
      { name: 'Cultura de la legalidad', text: 'La vivencia de nuestros valores rige todas nuestras acciones y conductas.' },
      { name: 'Adaptación y transformación tecnológica', text: 'Aprovechamos la tecnología para atender en tiempo real las necesidades de nuestros clientes.' },
      { name: 'Productos y servicios', text: 'La más alta calidad, con un servicio completo e integral.' },
      { name: 'Entorno global', text: 'Revisión, evolución y adaptación constantes a un entorno cambiante.' },
      { name: 'Compromisos con los grupos de interés', text: 'Mecanismos de comunicación en ambas vías para recibir retroalimentación constante.' },
      { name: 'Innovación', text: 'Nuevas estrategias, productos y servicios para potenciar el desarrollo de nuestros clientes.' },
    ],
    scopes: [
      { name: 'Cultura de integridad', text: 'Relaciones de confianza, liderazgos conscientes y una cultura ética y de cumplimiento.', objectives: ['Garantizar la legalidad y transparencia de nuestras operaciones.', 'Promover la cultura de la legalidad a través de nuestros valores éticos.', 'Fortalecer la rendición de cuentas: medir, evaluar y documentar nuestras acciones.'] },
      { name: 'Transformación tecnológica', text: 'Tecnologías digitales para decidir mejor en todos los niveles, protegiendo la información.', objectives: ['Eficientar y facilitar nuestros procesos a través de la tecnología.', 'Analizar y adoptar procesos tecnológicos como la inteligencia artificial.', 'Cuidar y proteger la información de todos nuestros grupos de interés.'] },
      { name: 'Innovación', text: 'Mejora continua e ideas que se transforman en productos o servicios novedosos.', objectives: ['Facilitar espacios para aportar ideas que revolucionen nuestros procesos.', 'Invertir en PYMES y ayudarlas a crecer en lo económico, social y ambiental.'] },
    ],
  },
];

/** Objetivos de Desarrollo Sostenible de la ONU con los que se alinea el Modelo */
export const sdgs = [
  { n: 2, name: 'Hambre cero', image: 'ods-2', goal: 'Participar en esfuerzos que promuevan el acceso justo y equitativo a una alimentación balanceada.' },
  { n: 3, name: 'Salud y bienestar', image: 'ods-4', goal: 'Cuidar la salud y promover el bienestar de colaboradores y sus familias.' },
  { n: 4, name: 'Educación de calidad', image: 'ods-5', goal: 'Desarrollar y fortalecer el talento; adaptar nuestros procesos a los cambios generacionales.' },
  { n: 6, name: 'Agua limpia y saneamiento', image: 'ods-6', goal: 'Invertir en saneamiento y apoyar a pequeños productores en el cuidado del agua.' },
  { n: 7, name: 'Energía asequible y no contaminante', image: 'ods-8', goal: 'Promover la transición hacia energías limpias y renovables.' },
  { n: 8, name: 'Trabajo decente y crecimiento económico', image: 'ods-9', goal: 'Asegurar el respeto de los derechos humanos y gestionar riesgos con innovación y tecnología.' },
  { n: 9, name: 'Industria, innovación e infraestructura', image: 'ods-11', goal: 'Aportar ideas que revolucionen nuestros procesos e invertir en PYMES.' },
  { n: 12, name: 'Producción y consumo responsables', image: 'ods-12', goal: 'Desarrollar a los productores de nuestra cadena de valor y participar en redes comunitarias.' },
  { n: 15, name: 'Vida de ecosistemas terrestres', image: 'ods-13', goal: 'Promover acciones que protegen, conservan y restauran los ecosistemas.' },
  { n: 16, name: 'Paz, justicia e instituciones sólidas', image: 'ods-14', goal: 'Garantizar la legalidad y la transparencia; prevenir el fraude y la corrupción.' },
];

export const stakeholders = [
  { name: 'Accionistas', text: 'Rendimos cuentas y trabajamos para asegurar y vigilar el retorno de la inversión.' },
  { name: 'Colaboradores', text: 'Las personas del grupo son el motor diario del desarrollo de las empresas.' },
  { name: 'Clientes', text: 'Ofrecemos los mejores productos y servicios; cumplimos y superamos expectativas.' },
  { name: 'Productores', text: 'Además de proveedores, son personas clave de nuestra cadena de valor.' },
  { name: 'Proveedores', text: 'Fortalecemos las capacidades de nuestra cadena de valor para crecer juntos.' },
  { name: 'Gobiernos', text: 'Cumplimos las normas y leyes de los diversos niveles de gobierno.' },
  { name: 'Competencia', text: 'Promovemos la sana competencia: nos reta y motiva a mejorar.' },
  { name: 'Comunidad', text: 'Desde nuestros inicios, nuestro entorno ha sido clave de nuestro crecimiento.' },
];
