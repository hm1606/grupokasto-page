// Avisos de privacidad: el texto es el mismo para todas las empresas del grupo; cambia el responsable
// (razón social y domicilio). Se muestran en /avisos-de-privacidad/ con un selector de empresa.

export type PrivacyCompany = { id: string; division: string; name: string; address: string[]; phones: string[]; web?: string };

export const corporate: PrivacyCompany = {
  id: 'grupo-kasto',
  division: 'Corporativo',
  name: 'Grupo Kasto, Oficinas Corporativas',
  address: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
  phones: ['352 526 2829', '352 526 1770'],
  web: 'www.grupokasto.com',
};

export const privacyCompanies: PrivacyCompany[] = [
  corporate,
  { id: 'sefinsa', division: 'División Granos', name: 'Semillas y Fibras Internacionales, S.A. de C.V.', address: ['Circuito Interior No. 1003', 'Parque Industrial', 'Ciudad Obregón, Son.', 'C.P. 85065'], phones: ['644 411 0150', '644 411 0018'] },
  { id: 'ferropuerto', division: 'División Granos', name: 'Ferropuerto de Sonora, S.A. de C.V.', address: ['Carr. Internacional Km. 545-5', 'Zona Industrial', 'Ciudad Obregón, Son.', 'C.P. 85090'], phones: ['644 411 0435', '644 411 0786'] },
  { id: 'agrobasa', division: 'División Granos', name: 'Agroindustrias La Barca, S.A. de C.V.', address: ['Km. 2.5 Carr. La Barca-Zalamea', 'Zona Industrial', 'La Barca, Jal.', 'C.P. 47910'], phones: ['393 935 3224', '393 935 0504'] },
  { id: 'semillas-insumos', division: 'División Granos', name: 'Semillas e Insumos GK, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 2324'] },
  { id: 'kasavi', division: 'División Granos', name: 'Kasavi Comercial, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1766'] },
  { id: 'gk-molinos', division: 'División Molinos', name: 'Grupo Kasto Molinos, S.A. de C.V.', address: ['Av. México No. 3777', 'Col. Condominio México', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3647 8614'] },
  { id: 'atotonilco', division: 'División Molinos', name: 'Harinera de Atotonilco, S.A. de C.V.', address: ['Fco. Javier Mina No. 301', 'Col. Centro', 'Atotonilco el Alto, Jal.', 'C.P. 47750'], phones: ['391 917 0001'] },
  { id: 'parayas', division: 'División Molinos', name: 'Cía. Harinera del Parayas, S.A. de C.V.', address: ['Av. Vallarta No. 3998', 'Col. Juan Manuel Vallarta', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3121 7100'] },
  { id: 'agrocomercio', division: 'División Pecuaria', name: 'Agrocomercio San Juan, S.A. de C.V.', address: ['Av. Padre Hidalgo 410-6', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 0705'] },
  { id: 'folap', division: 'División Pecuaria', name: 'Folap, S.A. de C.V.', address: ['Blvd. Lázaro Cárdenas No. 1109', 'Col. Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'], phones: ['352 522 1350'] },
  { id: 'multiservicios', division: 'División Servicios', name: 'Multiservicios Profesionales GK, S.A. de C.V.', address: ['Av. Padre Hidalgo 410-1', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1939'] },
  { id: 'recosa', division: 'División Servicios', name: 'Regional de La Construcción, S.A. de C.V.', address: ['Blvd. Lázaro Cárdenas No. 1111', 'Col. Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'], phones: ['352 526 1350', '352 526 1050'] },
  { id: 'ciudad-del-sol', division: 'División Servicios', name: 'Servicios Ciudad del Sol, S.A. de C.V.', address: ['Av. Michoacán No. 475', 'Col. Ciudad del Sol', 'La Piedad, Mich.', 'C.P. 59310'], phones: ['352 526 6269'] },
  { id: 'transportes', division: 'División Servicios', name: 'Transportes Kasto, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-4', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1340', '352 522 5571'] },
  { id: 'idgk', division: 'División Servicios', name: 'Investigación y Desarrollo GK, S.A. de C.V.', address: ['Av. Abedules 414', 'Col. Rinconada Santa Rita', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3813 4281'] },
  { id: 'el-rosal', division: 'Invernaderos', name: 'Agrícola El Rosal, S.A. de C.V.', address: ['Granja Santa Elena', 'Rancho Altamira', 'Numarán, Mich.', 'C.P. 59430'], phones: ['352 522 9585', '352 522 5106'] },
  { id: 'operadora-ohlala', division: 'Panadería y bistró', name: 'Operadora Ohlala, S.A. de C.V.', address: ['Av. Sebastián Bach 5074', 'Col. La Estancia', 'Zapopan, Jal.', 'C.P. 45020'], phones: ['33 1562 6995'], web: 'ohlala.com.mx' },
  { id: 'productora-oh', division: 'Panadería y bistró', name: 'Productora de Alimentos Oh, S.A. de C.V.', address: ['Anillo Perif. Nte. Manuel Gómez Morín 6650, Bodega 1', 'Col. Miramar', 'Zapopan, Jal.', 'C.P. 45060'], phones: ['33 3040 9091'], web: 'ohlala.com.mx' },
  { id: 'productos-z', division: 'Productos de consumo', name: 'Productos de Consumo “Z”, S.A. de C.V.', address: ['Incalpa No. 2000, Periférico Sur', 'Las Pintas', 'Tlaquepaque, Jal.', 'C.P. 45590'], phones: ['33 3915 1500', '33 3915 1513'] },
  { id: 'inmobiliario', division: 'Promotora de inversión', name: 'Desarrollo Inmobiliario Kasto, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-2', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1939', '352 526 0705'] },
];

export const purposes = [
  'Participación en el proceso de selección de clientes o proveedores que realizamos.',
  'Mantener nuestra lista de contactos de clientes y proveedores autorizados.',
  'Emisión y consulta de referencias comerciales.',
  'Llevar un registro y cotización de los bienes y/o servicios cuyo suministro otorgamos o requerimos.',
  'Cumplimiento de nuestras políticas o procedimientos internos respecto a clientes y proveedores, así como informarle de cambios al respecto.',
  'Atención de dudas y sugerencias.',
  'Cobro o pago de contraprestaciones y facturación.',
  'Elaboración de contratos y/u órdenes de compra.',
  'Actualización de bases de datos.',
  'Mantener una comunicación que nos permita evaluar la calidad de los bienes y/o servicios que otorgamos o requerimos.',
  'Invitaciones a eventos sociales que organicemos.',
];
