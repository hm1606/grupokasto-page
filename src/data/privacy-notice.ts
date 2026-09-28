// Texto del aviso de privacidad. El español es copia EXACTA del sitio anterior (texto legal: no se edita sin
// revisión del área legal). El inglés es una traducción de cortesía; la versión válida es la española.
import type { T } from '../i18n/ui';

export const noticeIntro: T = {
  es: 'En cumplimiento a lo establecido por la Ley Federal de Protección de Datos Personales en Posesión de Particulares y su reglamento (en lo sucesivo la “Ley”) y que coadyuvan con nuestro objetivo de proteger sus datos personales, es que:.',
  en: 'In compliance with the Mexican Federal Law on the Protection of Personal Data Held by Private Parties and its regulations (the “Law”), and in support of our goal of protecting your personal data, the selected company:',
};

export const noticeResponsible: T = {
  es: 'Es responsable de recabar sus datos personales, del tratamiento que se le dé a los mismos y de su protección y hace de su conocimiento, que los datos personales y/o patrimoniales de personas físicas que le son solicitados, serán utilizados exclusivamente para la realización de actividades concernientes a la posible relación comercial, o bien sobre la relación comercial ya existente que sostiene con usted, como:',
  en: 'Is responsible for collecting your personal data, for how it is processed and for its protection, and informs you that the personal and/or financial data of individuals requested from you will be used exclusively for activities related to a potential business relationship, or to the existing business relationship it has with you, such as:',
};

export const purposes: T[] = [
  { es: 'Participación en el proceso de selección de clientes o proveedores que realizamos.', en: 'Taking part in our customer or supplier selection process.' },
  { es: 'Mantener nuestra lista de los contactos de clientes y proveedores autorizados.', en: 'Maintaining our list of authorized customer and supplier contacts.' },
  { es: 'Emisión y consulta de referencias comerciales.', en: 'Issuing and checking business references.' },
  { es: 'Llevar un registro y cotización de los de bienes y/o servicios cuyo suministro otorgamos o requerimos.', en: 'Keeping records and quotes of the goods and/or services we supply or require.' },
  { es: 'Cumplimiento de nuestras políticas o procedimientos internos respecto a clientes y proveedores, así como informarle de cambios al respecto.', en: 'Complying with our internal policies or procedures for customers and suppliers, and informing you of any changes.' },
  { es: 'Atención de dudas y sugerencias.', en: 'Handling questions and suggestions.' },
  { es: 'Cobro o pago de contraprestaciones y facturación.', en: 'Collecting or paying consideration and invoicing.' },
  { es: 'Elaboración de contratos y/u órdenes de compra.', en: 'Drawing up contracts and/or purchase orders.' },
  { es: 'Actualización de bases de datos.', en: 'Updating databases.' },
  { es: 'Mantener una comunicación que nos permita evaluar la calidad de los bienes y/o servicios que otorgamos o requerimos.', en: 'Keeping in touch to evaluate the quality of the goods and/or services we supply or require.' },
  { es: 'Invitaciones a eventos sociales que organicemos.', en: 'Invitations to social events we organize.' },
];

export const noticeSections: { title?: T; paragraphs: T[] }[] = [
  {
    paragraphs: [
      {
        es: 'En forma accesoria los datos personales podrán ser utilizados con fines mercadotécnicos, publicidad, prospección comercial, así como para la elaboración de perfil de clientes para el desarrollo y ofrecimiento de nuevos productos, realización de encuestas, creación o implementación de procesos analíticos y estadísticos necesarios o convenientes relacionados con los bienes y/o servicios cuyo suministro otorgamos o requerimos.',
        en: 'Secondarily, personal data may be used for marketing, advertising and business prospecting, and to build customer profiles for developing and offering new products, conducting surveys, and creating or implementing analytical and statistical processes related to the goods and/or services we supply or require.',
      },
    ],
  },
  {
    title: { es: 'Solicitud de Datos', en: 'Data requested' },
    paragraphs: [
      {
        es: 'Para las finalidades antes mencionadas y dependiendo del tipo de contrato, bien, servicio o monto de los mismos, es que pudiéramos requerir entre otros los siguientes datos de identificación personales o de la empresa que representa (incluyendo los derivados de sus características físicas): nombre, domicilio, teléfonos, correos electrónicos, estudios académicos, historial crediticio, afiliaciones, edad, estado civil, apoderados legales, poderes, acta constitutiva, comprobante de domicilio del negocio (recibo de luz, teléfono, agua o cable), comprobante de domicilio particular del apoderado, CURP, copia de la identificación oficial del apoderado y las firmas autorizadas, forma oficial R1 y cédula del RFC en copia simple, o en su caso, declaraciones anuales de ISR y IETU debidamente presentadas, contrato de arrendamiento en el caso de no ser propio el local.',
        en: 'For the purposes above, and depending on the type of contract, goods, service or amount, we may require, among others, the following identification data about you or the company you represent (including data derived from physical characteristics): name, address, phone numbers, email addresses, education, credit history, affiliations, age, marital status, legal representatives, powers of attorney, articles of incorporation, proof of business address (electricity, phone, water or cable bill), proof of the representative’s home address, CURP, a copy of the representative’s official ID and authorized signatures, form R1 and RFC tax ID card (simple copy) or, where applicable, duly filed annual ISR and IETU tax returns, and the lease agreement if the premises are not owned.',
      },
      {
        es: 'Se realiza el tratamiento de los datos solicitados anteriormente (datos personales y/o patrimoniales, de clientes, proveedores y contacto de éstos) de conformidad con los principios de licitud, consentimiento, información, calidad, finalidad, lealtad, proporcionalidad y responsabilidad en términos de lo dispuesto en la Ley.',
        en: 'The data requested above (personal and/or financial data of customers, suppliers and their contacts) is processed in accordance with the principles of lawfulness, consent, information, quality, purpose, loyalty, proportionality and accountability set out in the Law.',
      },
    ],
  },
  {
    title: { es: 'Protección de la Información', en: 'Information protection' },
    paragraphs: [
      {
        es: 'Le informamos que, con la finalidad de impedir el acceso y revelación no autorizada, mantener la exactitud de los datos y garantizar la utilización correcta de la información, aplicamos los procedimientos físicos, tecnológicos y administrativos apropiados para proteger la información que recabamos. La información personal y patrimonial que nos proporciona, de conformidad con la Legislación, se guarda en bases de datos controladas y con acceso limitado.',
        en: 'To prevent unauthorized access and disclosure, keep data accurate and ensure information is used correctly, we apply appropriate physical, technological and administrative procedures to protect the information we collect. The personal and financial information you provide is stored, as required by law, in controlled databases with restricted access.',
      },
    ],
  },
  {
    title: { es: 'Derecho de Acceso', en: 'Right of access' },
    paragraphs: [
      {
        es: 'Se le informa que podrá ejercer sus derechos de Acceso, Rectificación, Cancelación y Oposición (ARCO) de sus datos y que nos proporcionó, siempre y cuando su relación comercial con nosotros está saldada, a través del formulario que podrá obtenerse mediante solicitud a la siguiente dirección electrónica: datospersonales@grupokasto.com así como en el domicilio y teléfono señalado al inicio del presente aviso.',
        en: 'You may exercise your rights of Access, Rectification, Cancellation and Opposition (ARCO) over the data you provided, provided your business relationship with us is settled, using the form available on request at datospersonales@grupokasto.com, or at the address and phone number given at the beginning of this notice.',
      },
    ],
  },
  {
    title: { es: 'Transferencia de Datos', en: 'Data transfers' },
    paragraphs: [
      {
        es: 'Asimismo le informamos que sus datos personales pueden ser transferidos y tratados dentro de nuestra empresa y de terceras personas ya sean físicas o morales que de alguna manera existe una relación de cliente, proveeduría o de cualquier otra cosa.',
        en: 'Your personal data may also be transferred to and processed within our company and by third parties, individuals or legal entities, with whom there is a customer, supplier or other relationship.',
      },
      {
        es: 'En este sentido, su información puede ser, para que estas empresas adquieran o le vendan bienes y/o servicios cuyo suministro otorgamos o requerimos.',
        en: 'Accordingly, your information may be used so that these companies can buy from or sell to you the goods and/or services we supply or require.',
      },
      {
        es: 'Cualquier modificación a este aviso de privacidad podrá consultarla en www.grupokasto.com Nos reservamos el derecho de efectuar en cualquier momento modificaciones o actualizaciones al presente aviso de privacidad para la prestación u ofrecimiento de nuestros bienes y/o servicios, para la atención de modificaciones legislativas, regulatorias o jurisprudenciales, políticas internas, prácticas del mercado o por cualquier otra razón. Cualquier cambio que se realice a este aviso de privacidad, será incorporado al mismo y será dado a conocer en alguno de los siguientes medios: (i) anuncios visibles en nuestros establecimientos o centros de atención a clientes; o (ii) trípticos o folletos disponibles en nuestros establecimientos o centros de atención a clientes; o (iii) nuestra página de internet www.grupokasto.com',
        en: 'Any changes to this privacy notice can be consulted at www.grupokasto.com. We reserve the right to modify or update this privacy notice at any time for the provision of our goods and/or services, to address legislative, regulatory or case-law changes, internal policies, market practices or any other reason. Any change will be incorporated into this notice and announced through one of the following: (i) notices displayed at our facilities or customer service centers; (ii) leaflets or brochures available at our facilities or customer service centers; or (iii) our website www.grupokasto.com.',
      },
    ],
  },
];

export const translationDisclaimer: T = {
  es: '',
  en: 'This English version is a courtesy translation. The legally binding privacy notice is the Spanish version.',
};
