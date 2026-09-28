#!/usr/bin/env python3
"""
Convierte el PDF del Modelo de Sostenibilidad en láminas (imágenes) para el visor de /sostenibilidad/ del sitio nuevo
y del sitio anterior. El PDF NO se publica: en la página se consulta lámina por lámina, sin botón de descarga.

Uso (cuando cambie el documento):
  python3 -m venv /tmp/pdfenv && /tmp/pdfenv/bin/pip install pypdfium2 pillow
  /tmp/pdfenv/bin/python scripts/model-pages.py [ruta/al/modelo.pdf]
  npm run legacy    # para que el sitio anterior tome las láminas nuevas

Por omisión usa old-page-recursos/grupokasto/static/Modelo_de_Sostenibilidad_GK.pdf (el documento del sitio anterior).
Salida: src/assets/sostenibilidad/modelo/pagina-01.jpg … (2400 px de ancho; Astro genera las versiones WebP).
"""
import glob
import os
import sys

import pypdfium2 as pdfium

ROOT = os.path.normpath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
SRC = sys.argv[1] if len(sys.argv) > 1 else os.path.join(ROOT, 'old-page-recursos', 'grupokasto', 'static', 'Modelo_de_Sostenibilidad_GK.pdf')
OUT = os.path.join(ROOT, 'src', 'assets', 'sostenibilidad', 'modelo')
WIDTH = 2400

os.makedirs(OUT, exist_ok=True)
for old in glob.glob(os.path.join(OUT, 'pagina-*.jpg')):
    os.remove(old)
doc = pdfium.PdfDocument(SRC)
for i in range(len(doc)):
    page = doc[i]
    im = page.render(scale=WIDTH / page.get_width()).to_pil().convert('RGB')
    im.save(os.path.join(OUT, f'pagina-{i + 1:02d}.jpg'), quality=88, optimize=True, progressive=True)
print(f'{len(doc)} láminas en src/assets/sostenibilidad/modelo/')
