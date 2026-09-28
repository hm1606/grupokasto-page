// Variables de compilación (solo servidor / build).
// NOINDEX=1 → el sitio pide no aparecer en buscadores (dominio de revisión). En producción no se define.
export const noindex = process.env.NOINDEX === '1';
