// Avisos de privacidad: el texto es el mismo para todas las empresas del grupo; cambia el responsable
// (razón social y domicilio). Se muestran en /avisos-de-privacidad/ (y /en/privacy-notices/) con un selector de empresa.
import type { T } from '../i18n/ui';

export type PrivacyCompany = { id: string; division: T; name: string; address: string[]; phones: string[]; web?: string };

export const corporate: PrivacyCompany = {
  id: 'grupo-kasto',
  division: { es: 'Corporativo', en: 'Corporate' },
  name: 'Grupo Kasto, Oficinas Corporativas',
  address: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'],
  phones: ['352 526 2829', '352 526 1770'],
  web: 'www.grupokasto.com',
};

export const privacyCompanies: PrivacyCompany[] = [
  corporate,
  { id: 'sefinsa', division: { es: 'División Granos', en: 'Grain Division' }, name: 'Semillas y Fibras Internacionales, S.A. de C.V.', address: ['Circuito Interior No. 1003', 'Parque Industrial', 'Ciudad Obregón, Son.', 'C.P. 85065'], phones: ['644 411 0150', '644 411 0018'] },
  { id: 'ferropuerto', division: { es: 'División Granos', en: 'Grain Division' }, name: 'Ferropuerto de Sonora, S.A. de C.V.', address: ['Carr. Internacional Km. 545-5', 'Zona Industrial', 'Ciudad Obregón, Son.', 'C.P. 85090'], phones: ['644 411 0435', '644 411 0786'] },
  { id: 'agrobasa', division: { es: 'División Granos', en: 'Grain Division' }, name: 'Agroindustrias La Barca, S.A. de C.V.', address: ['Km. 2.5 Carr. La Barca-Zalamea', 'Zona Industrial', 'La Barca, Jal.', 'C.P. 47910'], phones: ['393 935 3224', '393 935 0504'] },
  { id: 'semillas-insumos', division: { es: 'División Granos', en: 'Grain Division' }, name: 'Semillas e Insumos GK, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 600', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 2324'] },
  { id: 'kasavi', division: { es: 'División Granos', en: 'Grain Division' }, name: 'Kasavi Comercial, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-5', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1766'] },
  { id: 'gk-molinos', division: { es: 'División Molinos', en: 'Flour Mills Division' }, name: 'Grupo Kasto Molinos, S.A. de C.V.', address: ['Av. México No. 3777', 'Col. Condominio México', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3647 8614'] },
  { id: 'atotonilco', division: { es: 'División Molinos', en: 'Flour Mills Division' }, name: 'Harinera de Atotonilco, S.A. de C.V.', address: ['Fco. Javier Mina No. 301', 'Col. Centro', 'Atotonilco el Alto, Jal.', 'C.P. 47750'], phones: ['391 917 0001'] },
  { id: 'parayas', division: { es: 'División Molinos', en: 'Flour Mills Division' }, name: 'Cía. Harinera del Parayas, S.A. de C.V.', address: ['Av. Vallarta No. 3998', 'Col. Juan Manuel Vallarta', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3121 7100'] },
  { id: 'agrocomercio', division: { es: 'División Pecuaria', en: 'Livestock Division' }, name: 'Agrocomercio San Juan, S.A. de C.V.', address: ['Av. Padre Hidalgo 410-6', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 0705'] },
  { id: 'folap', division: { es: 'División Pecuaria', en: 'Livestock Division' }, name: 'Folap, S.A. de C.V.', address: ['Blvd. Lázaro Cárdenas No. 1109', 'Col. Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'], phones: ['352 522 1350'] },
  { id: 'multiservicios', division: { es: 'División Servicios', en: 'Services Division' }, name: 'Multiservicios Profesionales GK, S.A. de C.V.', address: ['Av. Padre Hidalgo 410-1', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1939'] },
  { id: 'recosa', division: { es: 'División Servicios', en: 'Services Division' }, name: 'Regional de La Construcción, S.A. de C.V.', address: ['Blvd. Lázaro Cárdenas No. 1111', 'Col. Santa Fe', 'La Piedad, Mich.', 'C.P. 59370'], phones: ['352 526 1350', '352 526 1050'] },
  { id: 'ciudad-del-sol', division: { es: 'División Servicios', en: 'Services Division' }, name: 'Servicios Ciudad del Sol, S.A. de C.V.', address: ['Av. Michoacán No. 475', 'Col. Ciudad del Sol', 'La Piedad, Mich.', 'C.P. 59310'], phones: ['352 526 6269'] },
  { id: 'transportes', division: { es: 'División Servicios', en: 'Services Division' }, name: 'Transportes Kasto, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-4', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1340', '352 522 5571'] },
  { id: 'idgk', division: { es: 'División Servicios', en: 'Services Division' }, name: 'Investigación y Desarrollo GK, S.A. de C.V.', address: ['Av. Abedules 414', 'Col. Rinconada Santa Rita', 'Zapopan, Jal.', 'C.P. 45120'], phones: ['33 3813 4281'] },
  { id: 'el-rosal', division: { es: 'Invernaderos', en: 'Greenhouses' }, name: 'Agrícola El Rosal, S.A. de C.V.', address: ['Granja Santa Elena', 'Rancho Altamira', 'Numarán, Mich.', 'C.P. 59430'], phones: ['352 522 9585', '352 522 5106'] },
  { id: 'operadora-ohlala', division: { es: 'Panadería y bistró', en: 'Bakery and bistro' }, name: 'Operadora Ohlala, S.A. de C.V.', address: ['Av. Sebastián Bach 5074', 'Col. La Estancia', 'Zapopan, Jal.', 'C.P. 45020'], phones: ['33 1562 6995'], web: 'ohlala.com.mx' },
  { id: 'productora-oh', division: { es: 'Panadería y bistró', en: 'Bakery and bistro' }, name: 'Productora de Alimentos Oh, S.A. de C.V.', address: ['Anillo Perif. Nte. Manuel Gómez Morín 6650, Bodega 1', 'Col. Miramar', 'Zapopan, Jal.', 'C.P. 45060'], phones: ['33 3040 9091'], web: 'ohlala.com.mx' },
  { id: 'productos-z', division: { es: 'Productos de consumo', en: 'Consumer goods' }, name: 'Productos de Consumo “Z”, S.A. de C.V.', address: ['Incalpa No. 2000, Periférico Sur', 'Las Pintas', 'Tlaquepaque, Jal.', 'C.P. 45590'], phones: ['33 3915 1500', '33 3915 1513'] },
  { id: 'inmobiliario', division: { es: 'Promotora de inversión', en: 'Investment promotion' }, name: 'Desarrollo Inmobiliario Kasto, S.A. de C.V.', address: ['Av. Padre Hidalgo No. 410-2', 'Centro', 'Santa Ana Pacueco, Gto.', 'C.P. 36910'], phones: ['352 526 1939', '352 526 0705'] },
];

