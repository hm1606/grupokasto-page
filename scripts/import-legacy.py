#!/usr/bin/env python3
"""
Migración (se corrió una vez): toma el contenido del sitio viejo y lo deja listo para el sitio nuevo.

  - Fotos: de old-page-recursos/grupokasto/static (y legacy/capture/extra) a src/assets/<carpeta>/<nombre>,
    reducidas a 2400 px como máximo (Astro las vuelve a optimizar a WebP en cada build).
  - Noticias: cada página "Noticias-Detalladas-N" de APEX -> src/content/noticias/<slug>.md
    con sus fotos en src/assets/noticias/<slug>/.

Uso:  python3 scripts/import-legacy.py
No hace falta volver a correrlo: después de esto, las noticias y fotos se editan directo en src/.
"""
import html as H
import os, re, shutil, unicodedata
from PIL import Image

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STATIC = os.path.join(ROOT, 'old-page-recursos', 'grupokasto', 'static')
EXTRA = os.path.join(ROOT, 'legacy', 'capture', 'extra')
PAGES = os.path.join(ROOT, 'legacy', 'capture', 'pages')
ASSETS = os.path.join(ROOT, 'src', 'assets')
NEWS = os.path.join(ROOT, 'src', 'content', 'noticias')
MAX = 2400

# destino (sin extensión) -> archivo del sitio viejo (relativo a static/, o "ext:" para legacy/capture/extra)
IMAGES = {
    # Portada
    'portada/bodega': 'assets/images/video_bg_02.jpg',
    'portada/trigo': 'assets/images/Molinos-de-trigo-gk.jpg',
    'portada/molino-noche': 'assets/images/HAN_05.jpg',
    'portada/silos': 'assets/images/HAN-02.jpg',
    'portada/espiga': 'assets/images/HAN-04.jpg',
    'portada/granos': 'assets/images/HAN-01.jpg',
    'portada/campo': 'about-1-img-1.jpg',
    'portada/costal': 'about1.jpg',
    'portada/silos-cielo': 'assets/images/SEFINSA.jpg',
    'portada/trigal': 'assets/images/DG_info.jpg',
    'portada/elote': 'assets/images/Filosofia.jpg',
    'portada/trigo-verde': 'slide_v1_2.jpg',
    'portada/pacas': 'encabezado_2.jpg',
    'portada/costales-antiguos': 'imagen-13.jpg',
    'portada/certificaciones': 'assets/images/certificaciones.jpg',
    'portada/noticias': 'assets/images/Noticias.jpg',
    'portada/contacto': 'assets/images/contacto.jpg',
    'portada/espigas-cielo': 'assets/images/Contacto_imagen1.jpg',
    'portada/molino-trigo': 'Molino_trigo.jpg',
    'portada/invernadero-madera': 'GROUP-ON-DARK-WOOD-e1504188944269.jpg',
    'portada/aviso': 'assets/images/Aviso_privacidad.jpg',
    'portada/about-right': 'assets/images/about/about_page_right-img.jpg',
    # Personas (testimonios reales del sitio)
    'personas/susana-solis': 'assets/images/testimonial_Susana_solis.jpg',
    'personas/francisco-javier-ortiz': 'assets/images/emp_javier.png',
    'personas/guillermo-rivera': 'assets/images/emp_guillermo.jpg',
    'personas/miguel-angel': 'assets/images/emp_mike.png',
    'personas/sandra': 'assets/images/emp_sandra.png',
    'personas/rodrigo': 'assets/images/emp_rodrigo.jpg',
    'personas/zulema': 'assets/images/emp_zulema.png',
    'personas/cliente-miguel': 'assets/images/testimonial_miguel.png',
    'personas/cliente-alberto': 'assets/images/testimonial_alberto.png',
    'personas/cliente-rosario': 'assets/images/testimonial_rosario.png',
    # Marcas
    'marcas/parayas': 'parayas.png',
    'marcas/molinos': 'Division_molinos-de-trigo.png',
    'marcas/vigia': 'vigia.png',
    'marcas/pecuaria': 'Division_pecuaria.png',
    'marcas/folapsa': 'folapsa.png',
    'marcas/recosa': 'recosa.png',
    'marcas/granos': 'Division_granos.png',
    'marcas/red-sun-farms': 'assets/images/redsunfarms.png',
    'marcas/servicios': 'Division_servicios.png',
    'marcas/productos-z': 'assets/images/z-productos-de-consumo.png',
    'marcas/ohlala': 'assets/images/Brand_ohlala.png',
    # Certificaciones
    'certificaciones/iso-9001': 'logoiso9001.png',
    'certificaciones/haccp': 'logohaccp.png',
    'certificaciones/fssc-22000': 'ext:_ext/molinosgrupokasto.com/img/nosotros/ICONO-FSSC22000.png',
    'certificaciones/kosher': 'ext:_ext/molinosgrupokasto.com/img/nosotros/ICONO-KOSHER.png',
    # Divisiones: hero, foto de la división e instalaciones
    'divisiones/granos/hero': 'assets/images/GK-Draftb-6.jpg',
    'divisiones/granos/info': 'assets/images/DG_info2.jpg',
    'divisiones/granos/agrobasa': 'assets/images/GK-Draftb-6.jpg',
    'divisiones/granos/kasavi': 'assets/images/GK-Draftb-4.jpg',
    'divisiones/granos/sefinsa': 'assets/images/GK-aT-Bar-b-3.jpg',
    'divisiones/granos/ferropuerto': 'assets/images/Draft-GK-004.jpg',
    'divisiones/granos/agrobasa-2': 'assets/images/DG_04.jpg',
    'divisiones/molinos-de-trigo/hero': 'assets/images/Molinos_de_Trigo.jpg',
    'divisiones/molinos-de-trigo/info': 'ext:_ext/molinosgrupokasto.com/PortalGK/assets/images/Div_Molinos_Header2.jpg',
    'divisiones/molinos-de-trigo/planta-guadalajara': 'assets/images/DM_GDL2.jpg',
    'divisiones/molinos-de-trigo/planta-central': 'assets/images/DM_C.jpg',
    'divisiones/molinos-de-trigo/molino-la-concepcion': 'Molino_concepcion.jpeg',
    'divisiones/molinos-de-trigo/parayas': 'assets/images/DM_P.jpg',
    'divisiones/molinos-de-trigo/atotonilco': 'assets/images/DM_a2.jpg',
    'divisiones/pecuaria/hero': 'assets/images/pecuarios_4.jpg',
    'divisiones/pecuaria/info': 'assets/images/DP_info.jpg',
    'divisiones/pecuaria/folapsa': 'assets/images/DP_4.jpg',
    'divisiones/pecuaria/granjas-1': 'assets/images/DP_1.jpg',
    'divisiones/pecuaria/granjas-2': 'assets/images/DP_2.jpg',
    'divisiones/pecuaria/folapsa-2': 'assets/images/DP_3.jpg',
    'divisiones/pecuaria/granjas-3': 'assets/images/DP_5.jpg',
    'divisiones/pecuaria/folapsa-3': 'assets/images/DP_6.jpg',
    'divisiones/servicios/hero': 'assets/images/Servicios.jpg',
    'divisiones/servicios/info': 'assets/images/DS_info.jpg',
    'divisiones/servicios/ciudad-del-sol': 'assets/images/DS_01.jpg',
    'divisiones/servicios/recosa': 'assets/images/DS_05.jpg',
    'divisiones/servicios/transportes-kasto': 'assets/images/DS_03.png',
    'divisiones/servicios/idgk': 'assets/images/DS_04.png',
    'divisiones/servicios/multiservicios': 'assets/images/DS_02.jpg',
    'divisiones/invernaderos/hero': 'assets/images/Invernaderos.jpg',
    'divisiones/invernaderos/info': 'assets/images/DI_info.jpg',
    'divisiones/invernaderos/red-sun-farms-1': 'assets/images/DI_01.jpg',
    'divisiones/invernaderos/red-sun-farms-2': 'assets/images/DI_03.jpg',
    'divisiones/invernaderos/red-sun-farms-3': 'assets/images/DI_02.png',
    'divisiones/invernaderos/red-sun-farms-4': 'assets/images/DI_07.jpg',
    'divisiones/invernaderos/red-sun-farms-5': 'assets/images/DI_06.jpg',
    'divisiones/invernaderos/red-sun-farms-6': 'assets/images/DI_04.jpg',
    'divisiones/invernaderos/red-sun-farms-7': 'assets/images/DI_05.jpg',
    'divisiones/panaderia-y-bistro/hero': 'assets/images/Ohlala_carrusel.jpg',
    'divisiones/panaderia-y-bistro/info': 'assets/images/Ohlala_info.jpg',
    'divisiones/panaderia-y-bistro/ohlala-1': 'assets/images/Doh_01.jpg',
    'divisiones/panaderia-y-bistro/productora-1': 'assets/images/Doh_09.jpg',
    'divisiones/panaderia-y-bistro/ohlala-2': 'assets/images/Doh_05.jpg',
    'divisiones/panaderia-y-bistro/productora-2': 'assets/images/Doh_08.jpg',
    'divisiones/panaderia-y-bistro/ohlala-3': 'assets/images/Doh_25.jpg',
    'divisiones/panaderia-y-bistro/productora-3': 'assets/images/Doh_11.jpg',
    'divisiones/panaderia-y-bistro/ohlala-4': 'assets/images/Doh_28.jpg',
    'divisiones/panaderia-y-bistro/productora-4': 'assets/images/Doh_10.jpg',
    'divisiones/productos-de-consumo/hero': 'assets/images/p_consumo.jpg',
    'divisiones/productos-de-consumo/info': 'assets/images/DPC_Info.jpg',
    'divisiones/productos-de-consumo/pcz-1': 'assets/images/DPC_02.jpg',
    'divisiones/productos-de-consumo/pcz-2': 'assets/images/DPC_04.jpg',
    'divisiones/productos-de-consumo/pcz-3': 'assets/images/DPC_03.jpg',
    'divisiones/productos-de-consumo/pcz-4': 'assets/images/DPC_01.png',
    'divisiones/promotora-de-inversion/hero': 'assets/images/Promotora_de_inversion.jpg',
    'divisiones/promotora-de-inversion/info': 'assets/images/DPI_info.jpg',
    'divisiones/promotora-de-inversion/dik-1': 'assets/images/DPI_03.jpg',
    'divisiones/promotora-de-inversion/dik-2': 'assets/images/DPI_04.png',
    'divisiones/promotora-de-inversion/dik-3': 'assets/images/DPI_02.jpg',
    'divisiones/promotora-de-inversion/dik-4': 'assets/images/DPI_01.jpg',
    # Servicios
    'servicios/logistica-y-originacion/hero': 'assets/images/Logistica_y_originacion.jpg',
    'servicios/logistica-y-originacion/a': 'assets/images/LO_izq.jpg',
    'servicios/logistica-y-originacion/b': 'assets/images/LO_der.jpg',
    'servicios/comercializacion/hero': 'assets/images/comercializacion.jpg',
    'servicios/comercializacion/a': 'assets/images/comer_izq.jpg',
    'servicios/comercializacion/b': 'assets/images/comer_der.png',
    'servicios/asesoria-y-consultoria/hero': 'assets/images/asesoria_y_consultoria.jpg',
    'servicios/asesoria-y-consultoria/a': 'assets/images/AC_iqz.jpeg',
    'servicios/asesoria-y-consultoria/b': 'assets/images/AC_der.jpg',
    'servicios/desarrollo-de-proyectos/hero': 'assets/images/plan-de-obras.jpg',
    'servicios/desarrollo-de-proyectos/a': 'assets/images/DDPI_izq.jpg',
    'servicios/desarrollo-de-proyectos/b': 'assets/images/DDPI_der.jpg',
    # Galería (se usa la versión original, la más grande)
    'galeria/pecuaria': 'assets/images/g_Pecuaria_original.jpg',
    'galeria/parayas': 'assets/images/g_parayas_original.jpg',
    'galeria/ohlala': 'assets/images/G_ohlala_orig.jpg',
    'galeria/el-rosal': 'assets/images/g_ros_orig.jpg',
    'galeria/productos-z': 'assets/images/g_z_orig.jpg',
    'galeria/agrobasa': 'assets/images/g_agrobasa_orig.jpg',
    'galeria/sefinsa': 'assets/images/g_sefinsa_orig.jpg',
    'galeria/folapsa': 'assets/images/g_folap_orig.jpg',
    'galeria/ciudad-del-sol': 'assets/images/g_cdsol_orig.jpg',
    # Filosofía: íconos de valores
    'filosofia/proposito': 'sin_fondo_proposito.png',
    'filosofia/mision': 'sin_fondo_mision.png',
    'filosofia/vision': 'sin_fondo_vision.png',
    # Sostenibilidad
    'sostenibilidad/antecedentes': 'ANTECEDENTES.png',
    'sostenibilidad/contexto': 'CONTEXTO.png',
    'sostenibilidad/matriz': 'MATRIZ.png',
    'sostenibilidad/matriz-esg-ods': 'MATRIZ2.png',
    'sostenibilidad/modelo': 'nuestro modelo circle.png',
    'sostenibilidad/ambiental-ilustracion': 'Ambitos2.png',
    'sostenibilidad/ambiental-foto': 'Ambitos4.png',
    'sostenibilidad/social-ilustracion': 'AmbitosAcc1.png',
    'sostenibilidad/social-foto': 'AmbitosAcc2.png',
    'sostenibilidad/gobernanza-ilustracion': 'AmbitosGober1.png',
    'sostenibilidad/gobernanza-foto': 'AmbitosGober2.png',
    'sostenibilidad/grupos-de-interes': 'GRUPOSDEINTERES.png',
}
for n in [2, 3, 4, 5, 6, 8, 9, 11, 12, 13, 14]:
    IMAGES[f'sostenibilidad/ods/ods-{n}'] = f'ODS{n}.jpg'

# Noticias: página de APEX -> slug y ajustes (portada que ya no existe, fecha corregida con el listado)
NEWS_PAGES = {
    12: 'ciudad-del-sol-estrena-contenedores',
    22: 'nuevo-sitio-web-grupo-kasto',
    25: 'red-sun-farms-nuevo-logotipo',
    26: 'nuevo-sitio-web-grupo-kasto-molinos',
    27: 'ohlala-abre-nueva-sucursal',
    29: 'un-dia-para-donar',
    30: 'molino-la-concepcion-construyendo-nuestro-futuro',
    31: 'ohlala-boulangerie-cafe-nuevo-concepto',
    32: 'semana-de-la-seguridad-2023',
    33: 'team-building-trasciende',
    34: 'grupo-kasto-rumbo-a-la-sostenibilidad',
    35: 'mexipan-2024',
    36: 'materializando-nuestro-modelo-de-sostenibilidad',
    37: 'concientizacion-cancer-de-mama',
    38: 'agroindustrias-la-barca-dia-de-muertos',
    39: 'planta-guadalajara-entorno-laboral-saludable',
    40: 'gkm-planta-central-responsabilidad-social',
    41: 'expo-agricola-gk',
    42: 'simulacro-nacional-planta-central',
    43: 'semana-de-la-seguridad-2025',
    44: 'voluntariado-cuidado-de-los-bosques',
}
COVER_FALLBACK = {30: 'Molino_concepcion.jpeg', 31: 'assets/images/Doh_05.jpg'}
DATE_FIX = {37: '2024-10-06'}  # el listado dice 06 Oct 2024 (mes de la concientización); el detalle, Nov
MONTHS = {'ene': 1, 'feb': 2, 'mar': 3, 'abr': 4, 'may': 5, 'jun': 6, 'jul': 7, 'ago': 8, 'sep': 9, 'oct': 10, 'nov': 11, 'nav': 11, 'dic': 12}


def src_path(rel):
    return os.path.join(EXTRA, rel[4:]) if rel.startswith('ext:') else os.path.join(STATIC, rel)


def save_image(src, dest_noext):
    """Copia reduciendo a MAX px. PNG con transparencia -> PNG; lo demás -> JPG."""
    im = Image.open(src)
    im.load()
    has_alpha = im.mode in ('RGBA', 'LA', 'P') and (im.convert('RGBA').getextrema()[3][0] < 250)
    if max(im.size) > MAX:
        im.thumbnail((MAX, MAX), Image.LANCZOS)
    os.makedirs(os.path.dirname(dest_noext), exist_ok=True)
    if has_alpha:
        out = dest_noext + '.png'
        im.convert('RGBA').save(out, optimize=True)
    else:
        out = dest_noext + '.jpg'
        im.convert('RGB').save(out, quality=86, optimize=True, progressive=True)
    return out


def text(s):
    s = re.sub(r'<br\s*/?>', '\n', s)
    s = re.sub(r'<strong>(.*?)</strong>|<b>(.*?)</b>', lambda m: f'**{(m.group(1) or m.group(2)).strip()}**', s, flags=re.S)
    s = re.sub(r'<a[^>]*href="([^"]+)"[^>]*>(.*?)</a>', lambda m: f'[{re.sub(r"<[^>]+>", "", m.group(2)).strip()}]({m.group(1)})', s, flags=re.S)
    s = re.sub(r'<[^>]+>', '', s)
    s = H.unescape(s)
    return re.sub(r'[ \t\r\n]+', ' ', s).strip()


def slugify(s):
    s = unicodedata.normalize('NFKD', s).encode('ascii', 'ignore').decode().lower()
    return re.sub(r'[^a-z0-9]+', '-', s).strip('-')


def yaml_str(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"') + '"'


def import_news():
    os.makedirs(NEWS, exist_ok=True)
    for pid, slug in NEWS_PAGES.items():
        h = open(os.path.join(PAGES, f'p{pid}.html'), encoding='utf-8').read()
        i = h.find('news_detail_left')
        j = h.find('news_detail__bottom', i)
        seg, bottom = h[i:j], h[j:h.find('comment-one', j)]
        title = text(re.search(r'<h2[^>]*>(.*?)</h2>', seg, re.S).group(1))
        d = text(re.search(r'news_detail_date_box">\s*<p>(.*?)</p>', seg, re.S).group(1)).split()
        date = DATE_FIX.get(pid) or f'{int(d[2]):04d}-{MONTHS[d[1][:3].lower()]:02d}-{int(d[0]):02d}'
        imgs = []
        for u in re.findall(r'<img[^>]*src="([^"]+)"', seg):
            name = u.split('/static/v')[-1].split('/', 1)[-1] if '/static/v' in u else None
            if name and name not in imgs and os.path.exists(os.path.join(STATIC, name)):
                imgs.append(name)
        if not imgs or pid in COVER_FALLBACK:
            imgs.insert(0, COVER_FALLBACK[pid])
        out_imgs = []
        for k, name in enumerate(imgs):
            dest = os.path.join(ASSETS, 'noticias', slug, 'portada' if k == 0 else f'foto-{k}')
            out_imgs.append(os.path.relpath(save_image(os.path.join(STATIC, name), dest), NEWS))
        # Párrafos y listas del cuerpo (sin el título ni la fecha)
        body_html = seg[seg.find('</h2>') + 5:] if '</h2>' in seg else seg
        blocks = []
        for m in re.finditer(r'<p[^>]*>(.*?)</p>|<ul[^>]*>(.*?)</ul>', body_html, re.S):
            if m.group(1) is not None:
                t = text(m.group(1))
                if t:
                    blocks.append(t)
            else:
                items = [text(li) for li in re.findall(r'<li[^>]*>(.*?)</li>', m.group(2), re.S)]
                blocks.append('\n'.join(f'- {it}' for it in items if it))
        tags = [text(t).rstrip(',') for t in re.findall(r'<a href="#">(.*?)</a>', bottom)]
        source = re.search(r'Fuente:</span>\s*<a[^>]*>(.*?)</a>', bottom, re.S)
        excerpt = blocks[0] if blocks else title
        if len(excerpt) > 220:
            excerpt = excerpt[:217].rsplit(' ', 1)[0] + '…'
        fm = [
            '---',
            f'title: {yaml_str(title)}',
            f'date: {date}',
            f'excerpt: {yaml_str(excerpt)}',
            f'cover: {yaml_str(out_imgs[0])}',
            'gallery:' + ('' if len(out_imgs) > 1 else ' []'),
            *[f'  - {yaml_str(p)}' for p in out_imgs[1:]],
            'tags: [' + ', '.join(yaml_str(t) for t in tags if t) + ']',
            f'source: {yaml_str(text(source.group(1)) if source else "Comunicación Grupo Kasto")}',
            f'legacyPage: {pid}',
            '---',
            '',
        ]
        open(os.path.join(NEWS, f'{slug}.md'), 'w', encoding='utf-8').write('\n'.join(fm) + '\n\n'.join(blocks) + '\n')
        print(f'  noticia p{pid} -> {slug} ({len(out_imgs)} fotos)')


def main():
    for dest, rel in IMAGES.items():
        src = src_path(rel)
        if not os.path.exists(src):
            print(f'  ✗ falta {rel}')
            continue
        save_image(src, os.path.join(ASSETS, dest))
    print(f'{len(IMAGES)} imágenes')
    import_news()
    # El Modelo de Sostenibilidad NO se copia como PDF (no se descarga): sus láminas se generan con scripts/model-pages.py


if __name__ == '__main__':
    main()
