#!/usr/bin/env python3
"""
Arma el sitio anterior de Grupo Kasto (Oracle APEX, app 102) como sitio estático: el mismo diseño y los mismos
textos, pero ya sin APEX detrás.

Entradas:
  old-page-recursos/grupokasto/   copia de la raíz web del servidor viejo (/static, /i, /css, …).
                                  /static/ tiene los mismos archivos que APEX servía como #APP_IMAGES#
                                  (…/xxpokasto/r/102/files/static/v45/…), byte a byte.
  legacy/capture/pages/           HTML renderizado de cada página (legacy/capture.py)
  legacy/capture/extra/           recursos que no venían en la raíz web
  src/data/divisions.ts, src/data/services.ts, src/content/noticias/es/*.md
                                  rutas del sitio nuevo (el sitio anterior usa exactamente las mismas)

Salida: legacy/site/
  index.html, nosotros/index.html, divisiones/granos/index.html, noticias/<nota>/index.html, …
  static/, fonts/, …   la raíz web del servidor viejo, con las fotos optimizadas
  sitemap.xml, robots.txt, 404.html

Qué cambia respecto al original (se ve igual; funciona mejor):
  - URLs limpias, IGUALES a las del sitio nuevo (/divisiones/granos/ en lugar de /ords/PDB1/f?p=102:7).
    Al pasar al sitio nuevo ninguna dirección cambia. Las URLs viejas de APEX responden 301 (Nginx).
  - Sin el runtime de APEX (≈600 KB de JavaScript por página que ya no hacía nada) ni sus formularios ocultos.
  - Menú que funciona: submenús que se abren al tocarlos en celular, sección actual marcada, sin enlaces
    rotos (#, wwwgk.nyva.io) ni la opción suelta "Noticias detalladas".
  - Fotos optimizadas: las de más de 150 KB se reducen a 2000 px y pasan a WebP (la portada bajó de 46 MB
    a ~3 MB). Las URLs de los archivos originales redirigen a la versión optimizada.
  - Título y descripción propios en cada página, canonical, favicon, sitemap y 404.
  - El formulario de Contacto (antes APEX_MAIL) manda el mensaje a la API del sitio
    (server/api.mjs, el mismo destino comunicacion@grupokasto.com).
  - Páginas que nadie enlazaba (login de APEX, SendMail, una nota ajena al grupo, duplicados) no se publican;
    sus URLs viejas redirigen a la sección que corresponde.

Uso:  python3 legacy/build.py      (npm run legacy)
"""
import glob
import html as htmllib
import json
import os
import re
import shutil
from datetime import date

from PIL import Image

from polish import copy_brand_files, polish

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.normpath(os.path.join(HERE, '..'))
WEBROOT = os.path.join(ROOT, 'old-page-recursos', 'grupokasto')
CAPTURE = os.path.join(HERE, 'capture')
EXPORT = os.path.join(HERE, 'apex-export', 'application', 'pages')
OUT = os.path.join(HERE, 'site')
CACHE = os.path.join(HERE, '.cache', 'img')  # fotos ya optimizadas (no se versiona)
SITE_URL = 'https://www.grupokasto.com'
APP = '102'

# Fotos: a partir de este peso se optimizan (WebP, lado mayor ≤ MAX_SIDE)
OPTIMIZE_FROM = 150_000
MAX_SIDE = 2000
WEBP_QUALITY = 80


# ---------------------------------------------------------------------------------------------------------------
# Rutas: las mismas del sitio nuevo
# ---------------------------------------------------------------------------------------------------------------

def read(path):
    return open(path, encoding='utf-8').read()


def slugs_from_ts(path):
    """[(legacyPage, slug en español)] de src/data/divisions.ts o services.ts"""
    src = read(path)
    blocks = re.split(r'\n  \{\n', src)[1:]
    out = []
    for b in blocks:
        slug = re.search(r"slug: \{ es: '([^']+)'", b)
        page = re.search(r'legacyPage: (\d+)', b)
        if slug and page:
            out.append((int(page.group(1)), slug.group(1)))
    return out


NEWS_DATES = {}


def news_pages():
    """{legacyPage: (slug, título, resumen)} de las noticias en español"""
    out = {}
    for path in glob.glob(os.path.join(ROOT, 'src', 'content', 'noticias', 'es', '*.md')):
        fm = read(path).split('---')[1]
        page = re.search(r'^legacyPage:\s*(\d+)', fm, re.M)
        if not page:
            continue
        title = re.search(r'^title:\s*"(.*)"\s*$', fm, re.M)
        excerpt = re.search(r'^excerpt:\s*"(.*)"\s*$', fm, re.M)
        when = re.search(r'^date:\s*(\S+)', fm, re.M)
        out[int(page.group(1))] = (
            os.path.splitext(os.path.basename(path))[0],
            title.group(1).replace('\\"', '"') if title else '',
            excerpt.group(1).replace('\\"', '"') if excerpt else '',
        )
        NEWS_DATES[int(page.group(1))] = when.group(1) if when else ''
    return out


NEWS = news_pages()
DIVISIONS = slugs_from_ts(os.path.join(ROOT, 'src', 'data', 'divisions.ts'))
SERVICES = slugs_from_ts(os.path.join(ROOT, 'src', 'data', 'services.ts'))

# Página de APEX -> ruta publicada
ROUTES = {
    1: '/',
    2: '/contacto/',
    3: '/nosotros/',
    5: '/galeria/',
    6: '/avisos-de-privacidad/',
    11: '/noticias/',
    16: '/filosofia/',
    17: '/certificaciones/',
    45: '/sostenibilidad/',
}
ROUTES.update({p: f'/divisiones/{s}/' for p, s in DIVISIONS})
ROUTES.update({p: f'/servicios/{s}/' for p, s in SERVICES})
ROUTES.update({p: f'/noticias/{slug}/' for p, (slug, _, _) in NEWS.items()})
# Páginas que no enlazaba nadie: no se publican, su URL vieja lleva a la sección que corresponde
REDIRECT_ONLY = {
    23: '/noticias/',        # nota de GMéxico Transportes (no es del grupo)
    24: '/contacto/',        # SendMail (proceso interno de APEX)
    28: '/contacto/',        # quejas y sugerencias (formulario de APEX sin enlace; Contacto sí funciona)
    46: '/sostenibilidad/',  # versión anterior de Sostenibilidad
    9999: '/',               # inicio de sesión de APEX
}

# Nombre de cada página para el <title>
TITLES = {
    2: 'Contacto', 3: 'Historia', 5: 'Galería', 6: 'Avisos de privacidad', 11: 'Noticias',
    16: 'Filosofía', 17: 'Certificaciones', 45: 'Sostenibilidad',
}

# Menú principal (mismos textos del sitio anterior)
NAV = [
    ('Inicio', '/', None),
    ('Nosotros', None, [('Historia', '/nosotros/'), ('Filosofía', '/filosofia/'),
                        ('Certificaciones', '/certificaciones/'), ('Galería', '/galeria/')]),
    ('Divisiones', None, [
        ('División Granos', '/divisiones/granos/'),
        ('División Molinos de trigo', '/divisiones/molinos-de-trigo/'),
        ('División Pecuaria', '/divisiones/pecuaria/'),
        ('División Servicios', '/divisiones/servicios/'),
        ('Invernaderos', '/divisiones/invernaderos/'),
        ('Panadería y bistró', '/divisiones/panaderia-y-bistro/'),
        ('Productos de consumo', '/divisiones/productos-de-consumo/'),
        ('Promotora de inversión', '/divisiones/promotora-de-inversion/'),
    ]),
    ('Servicios', None, [
        ('Logística y originación', '/servicios/logistica-y-originacion/'),
        ('Comercialización', '/servicios/comercializacion/'),
        ('Asesoría y consultoría', '/servicios/asesoria-y-consultoria/'),
        ('Desarrollo de proyectos', '/servicios/desarrollo-de-proyectos/'),
    ]),
    ('Noticias', '/noticias/', None),
    ('Sostenibilidad', '/sostenibilidad/', None),
    ('Contacto', '/contacto/', None),
]
for _, _, sub in NAV:
    for label, href in sub or []:
        for p, r in ROUTES.items():
            if r == href and p not in TITLES:
                TITLES[p] = label


def aliases():
    """Alias de página definidos en APEX (p. ej. f?p=102:HOME)"""
    out = {}
    for path in glob.glob(os.path.join(EXPORT, 'page_*.sql')):
        src = read(path)
        a = re.search(r"p_alias=>'([^']+)'", src)
        n = re.search(r'wwv_flow_api\.create_page\(\s*p_id=>(\d+)', src)
        if a and n:
            out[a.group(1).upper()] = int(n.group(1))
    return out


def route_for(key):
    """Número o alias de página de APEX -> ruta publicada"""
    key = str(key).strip().upper()
    if key.isdigit():
        n = int(key)
    else:
        n = ALIASES.get(key)
    return ROUTES.get(n) or REDIRECT_ONLY.get(n) or '/'


ALIASES = aliases()
MODEL = []  # láminas del Modelo de Sostenibilidad (se llenan en main)


# ---------------------------------------------------------------------------------------------------------------
# HTML de cada página
# ---------------------------------------------------------------------------------------------------------------



# Lo que antes hacía APEX al cargar (textos del carrusel) + menú funcional + cortinilla que no espera a todas las fotos
SITE_JS = '''
<script>
jQuery(function ($) {
  /* La cortinilla de carga se quita en cuanto la página está lista (antes esperaba a que bajaran todas las fotos) */
  setTimeout(function () { $('.preloader').fadeOut(300); }, 250);

  /* Menú en celular: la sección actual ya viene abierta; tocar "Nosotros", "Divisiones" o "Servicios" abre su submenú */
  $('.mobile-nav__container li.dropdown.current').each(function () {
    $(this).children('ul').show();
    $(this).find('> a .dropdown-btn').addClass('open');
  });
  $(document).on('click', '.mobile-nav__container li.dropdown > a', function (e) {
    if ($(e.target).closest('.dropdown-btn').length) return;
    e.preventDefault();
    $(this).find('.dropdown-btn').first().trigger('click');
  });
  /* En escritorio los submenús se abren al pasar el mouse; su título no lleva a ningún lado */
  $(document).on('click', '.main-nav__main-navigation li.dropdown > a[href="#"]', function (e) { e.preventDefault(); });

  /* Mosaicos de fotos: se vuelven a acomodar cada vez que termina de cargar una foto (nunca quedan encimadas) */
  var $mosaic = $('.masonary-layout');
  if ($mosaic.length && $.fn.isotope) {
    var relayout = function () { if ($mosaic.data('isotope')) $mosaic.isotope('layout'); };
    $mosaic.find('img').each(function () { if (!this.complete) $(this).one('load', relayout); });
    $(window).on('load', relayout);
  }

  /* Botones del carrusel en español (antes lo hacía APEX) */
  var owlLabels = function () {
    $('.owl-prev').html('<span class="icon fa fa-angle-left" aria-hidden="true"></span><p>Anterior</p>');
    $('.owl-next').html('<p>Siguiente</p><span class="icon fa fa-angle-right" aria-hidden="true"></span>');
  };
  owlLabels();
  $(window).on('load', owlLabels);
});
</script>
'''


APEX_OLD = 'https://apex.oracle.com/pls/apex/gkasto/r/74688/files/static/'
RESCUED = {
    APEX_OLD + 'v27/ohlala_nvo_cpto.jpg': '/static/rescatadas/ohlala-boulangerie-cafe.jpg',
    APEX_OLD + 'v27/ohlala_nvo_cpto_e.jpg': '/static/rescatadas/ohlala-boulangerie-cafe.jpg',
    APEX_OLD + 'v33/Molino_concepcion_about_us.jpeg': '/static/Molino_concepcion.jpeg',
}
RESCUED_FILES = {
    'static/rescatadas/ohlala-boulangerie-cafe.jpg': 'src/assets/noticias/ohlala-boulangerie-cafe-nuevo-concepto/portada.jpg',
}


MODEL_DIR = os.path.join(ROOT, 'src', 'assets', 'sostenibilidad', 'modelo')  # láminas (scripts/model-pages.py)
MODEL_PDF = 'static/Modelo_de_Sostenibilidad_GK.pdf'


def model_pages():
    """Láminas del Modelo de Sostenibilidad como WebP en static/modelo/ (el PDF ya no se publica)"""
    out = []
    dest = os.path.join(OUT, 'static', 'modelo')
    os.makedirs(dest, exist_ok=True)
    for src in sorted(glob.glob(os.path.join(MODEL_DIR, 'pagina-*.jpg'))):
        name = os.path.splitext(os.path.basename(src))[0] + '.webp'
        im = Image.open(src).convert('RGB')
        im.thumbnail((1600, 1600), Image.LANCZOS)
        im.save(os.path.join(dest, name), 'WEBP', quality=82, method=6)
        out.append((f'/static/modelo/{name}', im.size))
    return out


def model_html(pages):
    """Las láminas, una bajo otra (como el visor PDF.js que tenía la página), sin opción de guardarlas"""
    lazy = ' loading="lazy"'
    imgs = '\n'.join(
        f'  <img class="gk-pdf-page" src="{src}" width="{w}" height="{h}" alt="Modelo de Sostenibilidad Grupo Kasto, lámina {k} de {len(pages)}"'
        f'{lazy if k > 1 else ""} decoding="async" draggable="false">'
        for k, (src, (w, h)) in enumerate(pages, 1))
    return (
        '<style>#pdf-responsive img.gk-pdf-page{display:block;width:100%;height:auto;margin:0 auto 14px;'
        '-webkit-user-select:none;user-select:none;-webkit-touch-callout:none;-webkit-user-drag:none}</style>\n'
        '<div id="pdf-responsive" oncontextmenu="return false">\n' + imgs + '\n</div>'
    )





def nav_html(route):
    """Menú principal con la sección actual marcada"""
    items = []
    for label, href, sub in NAV:
        current = href == route or (sub and any(h == route for _, h in sub)) or \
            (href == '/noticias/' and route.startswith('/noticias/'))
        cls = ' '.join(c for c in ('dropdown' if sub else '', 'current' if current else '') if c)
        attr = f' class="{cls}"' if cls else ''
        if sub:
            here = ' class="current"'
            links = '\n'.join(
                f'                                        <li{here if h == route else ""}><a href="{h}">{htmllib.escape(t)}</a></li>'
                for t, h in sub)
            items.append(f'                                <li{attr}>\n                                    <a href="#">{label}</a>\n'
                         f'                                    <ul>\n{links}\n                                    </ul>\n                                </li>')
        else:
            items.append(f'                                <li{attr}>\n                                    <a href="{href}">{label}</a>\n                                </li>')
    return '<ul class="main-nav__navigation-box">\n' + '\n'.join(items) + '\n                            </ul>'


LINK = re.compile(
    r'(?:https?://(?:www\.)?(?:grupokasto\.com|wwwgk\.nyva\.io))?(?:/ords/PDB1/)?'
    r'f\?p=' + APP + r'(?::|%3A)([^:&"\'\s<>]+)[^"\'\s<>]*'
)
STATIC = re.compile(
    r'(?:https?://(?:www\.)?grupokasto\.com)?(?:/ords/PDB1/)?xxpokasto/r/' + APP + r'/files/static/v\d+/'
)


def clean(html, pid, route):
    # --- APEX fuera ---
    html = re.sub(r'<form action="wwv_flow\.accept"[^>]*>\s*', '', html, count=1)
    html = re.sub(r'<input type="hidden" name="p_flow_id"[^\n]*?id="pSalt" />\s*', '', html, count=1)
    html = re.sub(r'<input type="hidden" id="pPageFormRegionChecksums"[\s\S]*?</form>', '', html, count=1)
    html = re.sub(r'<script>\s*var apex_img_dir[\s\S]*?</script>\s*', '', html)
    html = re.sub(r'<script src="(?:/i/|wwv_flow\.js_messages)[^"]*"></script>\s*', '', html)
    html = re.sub(r'<script type="text/javascript">\s*apex\.da\.initDaEventList[\s\S]*?</script>\s*', '', html)
    html = re.sub(r'<script type="text/javascript">\s*apex\.jQuery\( function\(\) \{[\s\S]*?</script>\s*', '', html)
    html = re.sub(r'<meta http-equiv="(?:Pragma|Expires|Cache-Control)"[^>]*>', '', html)
    # Botones de idioma (cambiaban el idioma en la sesión de APEX; el sitio anterior solo tiene español)
    html = re.sub(r'<a id="(?:top|bottom|side)-lang-button-(?:es|en)">[\s\S]*?</a>\s*', '', html)
    html = re.sub(r'\s*<link rel="stylesheet" href="https?://molinosgrupokasto\.com/PortalGK/assets/css/lang-buttons\.css">', '', html)
    # "Built with ♥ using Oracle APEX"
    html = re.sub(r'<div class="site-footer_bottom_copyright" style="padding:4px;">\s*<span class="footer-apex">Built with[\s\S]*?</div>', '', html)

    # --- Enlaces y archivos ---
    html = LINK.sub(lambda m: route_for(m.group(1)), html)
    html = STATIC.sub('/static/', html)
    html = html.replace('https://www.grupokasto.com/ords/r/grupokasto/files/static/v1/images/logo.png',
                        SITE_URL + '/static/logo-gk_2.png')
    html = re.sub(r'https?://(molinosgrupokasto\.com/(?:PortalGK/assets|img)/)', r'/_ext/\1', html)
    # Fotos que el sitio anterior pedía a otra aplicación de APEX que ya no existe (se veían rotas): copia local
    for old, new in RESCUED.items():
        html = html.replace(old, new)
    html = html.replace('<a href="index.html">Inicio</a>', '<a href="/">Inicio</a>')
    # Erratas en los títulos de las páginas (no son textos institucionales)
    html = html.replace('Sosteniblidad', 'Sostenibilidad').replace('>Filosofia<', '>Filosofía<')
    # Menú y pie: enlaces que no llevaban a ningún lado
    html = re.sub(r'<ul class="main-nav__navigation-box">[\s\S]*?</ul>(?=\s*</div><!-- /\.navbar-collapse -->)',
                  lambda m: nav_html(route), html)
    html = html.replace('<li><a href="#">Servicios</a></li>', '<li><a href="/servicios/logistica-y-originacion/">Servicios</a></li>')
    html = html.replace('<li><a href="#">Noticias</a></li>', '<li><a href="/noticias/">Noticias</a></li>')

    # --- <head>: título, descripción, canonical, íconos ---
    name = TITLES.get(pid) or (NEWS[pid][1] if pid in NEWS else None)
    title = f'{name} | Grupo Kasto' if name else 'Grupo Kasto | Grupo agroindustrial mexicano desde 1945'
    html = re.sub(r'<title>[^<]*</title>', f'<title>{htmllib.escape(title)}</title>', html, count=1)
    # Imágenes fuera de la primera pantalla: se cargan al acercarse
    def lazy(m):
        tag = m.group(0)
        if 'loading=' in tag or re.search(r'logo|Loader|preloader', tag, re.I):
            return tag
        # Mosaicos (isotope/masonry): acomodan las fotos al cargar la página y necesitan que ya tengan su altura
        near = html.rfind('masonary-item', 0, m.start())
        if near >= 0 and m.start() - near < 400:
            return tag
        return tag.replace('<img', '<img loading="lazy" decoding="async"', 1)
    html = re.sub(r'<img\b[^>]*>', lazy, html)

    # Sostenibilidad: el documento se consulta como láminas; ya no se carga (ni se puede descargar) el PDF
    if pid == 45 and MODEL:
        html = re.sub(r'<div id="pdf-responsive">[\s\S]*?</div>\s*</div>', model_html(MODEL), html, count=1)
        html = re.sub(r'<script src="[^"]*pdf\.min\.js"></script>\s*<script>[\s\S]*?</script>', '', html, count=1)
        html = re.sub(r'<!--(?:(?!-->)[\s\S])*PDF\.js[\s\S]*?-->\s*', '', html, count=1)

    # --- Scripts propios al final ---
    i = html.rfind('</body>')
    html = html[:i] + SITE_JS + html[i:] if i >= 0 else html + SITE_JS
    news = {'title': NEWS[pid][1], 'excerpt': NEWS[pid][2], 'date': NEWS_DATES.get(pid, '')} if pid in NEWS else None
    return polish(html, pid, route, title, news)


# ---------------------------------------------------------------------------------------------------------------
# Fotos
# ---------------------------------------------------------------------------------------------------------------

def optimize_images():
    """Fotos pesadas -> WebP. Devuelve {ruta web original: ruta web nueva}."""
    moved = {}
    saved = 0
    for d, _, files in os.walk(OUT):
        for f in files:
            if not re.search(r'\.(?:jpe?g|png)$', f, re.I):
                continue
            src = os.path.join(d, f)
            size = os.path.getsize(src)
            if size < OPTIMIZE_FROM:
                continue
            dst = os.path.splitext(src)[0] + '.webp'
            if os.path.exists(dst):  # ya hay un .webp con ese nombre: no se pisa
                continue
            rel = os.path.relpath(src, OUT)
            web = '/' + rel.replace(os.sep, '/')
            if web.startswith('/og/') or '/' not in rel:  # imágenes para compartir e íconos: ya vienen optimizados
                continue
            cached = os.path.join(CACHE, f'{rel}.{size}.webp')
            if os.path.exists(cached):
                shutil.copyfile(cached, dst)
                saved += size - os.path.getsize(dst)
                os.remove(src)
                moved[web] = os.path.splitext(web)[0] + '.webp'
                continue
            try:
                im = Image.open(src)
                im.load()
            except Exception as e:  # noqa: BLE001
                print(f'  ✗ {src}: {e}')
                continue
            if im.mode in ('P', 'LA', 'RGBA'):
                im = im.convert('RGBA')
                if im.getchannel('A').getextrema()[0] == 255:  # sin transparencia real
                    im = im.convert('RGB')
            elif im.mode != 'RGB':
                im = im.convert('RGB')
            im.thumbnail((MAX_SIDE, MAX_SIDE), Image.LANCZOS)
            im.save(dst, 'WEBP', quality=WEBP_QUALITY, method=6)
            if os.path.getsize(dst) >= size:  # no ganó nada: se queda el original
                os.remove(dst)
                continue
            os.makedirs(os.path.dirname(cached), exist_ok=True)
            shutil.copyfile(dst, cached)
            saved += size - os.path.getsize(dst)
            os.remove(src)
            moved[web] = os.path.splitext(web)[0] + '.webp'
    print(f'  {len(moved)} fotos optimizadas · {saved / 1e6:.0f} MB menos')
    return moved


def rewrite_refs(moved):
    """Cambia las referencias a las fotos optimizadas en HTML, CSS y JS"""
    by_path = {k.lower(): v for k, v in moved.items()}
    for d, _, files in os.walk(OUT):
        for f in files:
            if not f.endswith(('.html', '.css', '.js')):
                continue
            path = os.path.join(d, f)
            src = open(path, encoding='utf-8', errors='surrogateescape').read()
            base = '/' + os.path.relpath(d, OUT).replace(os.sep, '/') + '/'

            def fix(m):
                ref = m.group(2)
                clean_ref = ref.split('?')[0].split('#')[0]
                if clean_ref.startswith(('data:', 'http:', 'https:', '//')):
                    return m.group(0)
                absolute = clean_ref if clean_ref.startswith('/') else os.path.normpath(base + clean_ref).replace(os.sep, '/')
                new = by_path.get(absolute.lower())
                if not new:
                    return m.group(0)
                if clean_ref.startswith('/'):
                    return m.group(1) + new + m.group(3)
                return m.group(1) + ref[: len(ref) - len(os.path.basename(clean_ref))] + os.path.basename(new) + m.group(3)

            out = re.sub(r'''(url\(\s*['"]?|(?:src|href|data-[\w-]+)=["']|["'])([^"')\s<>]+\.(?:jpe?g|png))(\s*['"]?\)|["'])''',
                         fix, src, flags=re.I)
            if out != src:
                open(path, 'w', encoding='utf-8', errors='surrogateescape').write(out)


# ---------------------------------------------------------------------------------------------------------------

def copytree(src, dst):
    if os.path.isdir(src):
        shutil.copytree(src, dst, dirs_exist_ok=True,
                        ignore=shutil.ignore_patterns('.DS_Store', 'Thumbs.db', '*.php', '*.bak', 'index.html'))


NOT_FOUND = '''<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Página no encontrada | Grupo Kasto</title>
<meta name="robots" content="noindex">
<link rel="icon" href="/favicon.ico" sizes="32x32"><link rel="icon" type="image/svg+xml" href="/favicon.svg">
<link rel="stylesheet" href="/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/assets/css/style.css">
<style>
  body{min-height:100vh;display:grid;place-items:center;text-align:center;background:#f5f0e9;padding:40px 20px}
  h1{font-size:120px;line-height:1;color:#5b8c51;margin:0}
  h2{margin:10px 0 20px}
  .links{display:flex;gap:12px;flex-wrap:wrap;justify-content:center;margin-top:28px}
</style>
</head>
<body>
<main>
  <a href="/"><img src="/static/assets/images/logo-gk_2.png" alt="Grupo Kasto" style="height:80px"></a>
  <h1>404</h1>
  <h2>No encontramos esta página</h2>
  <p>Es posible que la dirección haya cambiado. Estas secciones pueden ayudarte:</p>
  <div class="links">
    <a class="thm-btn" href="/">Inicio</a>
    <a class="thm-btn" href="/nosotros/">Nosotros</a>
    <a class="thm-btn" href="/noticias/">Noticias</a>
    <a class="thm-btn" href="/contacto/">Contacto</a>
  </div>
</main>
</body>
</html>
'''


def main():
    if os.path.isdir(OUT):
        shutil.rmtree(OUT)
    os.makedirs(OUT)

    copytree(WEBROOT, OUT)
    copytree(os.path.join(CAPTURE, 'extra'), OUT)
    shutil.rmtree(os.path.join(OUT, 'ords'), ignore_errors=True)  # mensajes JS de APEX: ya no se usan
    for dest, src in RESCUED_FILES.items():
        os.makedirs(os.path.dirname(os.path.join(OUT, dest)), exist_ok=True)
        shutil.copyfile(os.path.join(ROOT, src), os.path.join(OUT, dest))

    global MODEL
    MODEL = model_pages()
    if MODEL and os.path.exists(os.path.join(OUT, MODEL_PDF)):
        os.remove(os.path.join(OUT, MODEL_PDF))

    pages = sorted(glob.glob(os.path.join(CAPTURE, 'pages', 'p*.html')), key=lambda p: int(re.sub(r'\D', '', os.path.basename(p))))
    published = []
    for path in pages:
        pid = int(re.sub(r'\D', '', os.path.basename(path)))
        route = ROUTES.get(pid)
        if not route:
            continue
        html = read(path)
        m = re.search(r'name="p_instance" value="(\d+)"', html)  # sesión de la captura
        if m and m.group(1) != '0':
            html = html.replace(m.group(1), '0')
        dest = os.path.join(OUT, route.strip('/'), 'index.html')
        os.makedirs(os.path.dirname(dest), exist_ok=True)
        open(dest, 'w', encoding='utf-8').write(clean(html, pid, route))
        published.append(route)

    copy_brand_files(OUT)
    open(os.path.join(OUT, '404.html'), 'w', encoding='utf-8').write(NOT_FOUND)
    today = date.today().isoformat()
    open(os.path.join(OUT, 'sitemap.xml'), 'w', encoding='utf-8').write(
        '<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n'
        + ''.join(f'  <url><loc>{SITE_URL}{r}</loc><lastmod>{today}</lastmod></url>\n' for r in sorted(published))
        + '</urlset>\n')
    open(os.path.join(OUT, 'robots.txt'), 'w').write(f'User-agent: *\nAllow: /\n\nSitemap: {SITE_URL}/sitemap.xml\n')

    moved = optimize_images()
    rewrite_refs(moved)

    # Para Nginx y el servidor local: URL vieja de APEX -> ruta, y foto original -> foto optimizada
    redirects = {str(n): r for n, r in {**REDIRECT_ONLY, **ROUTES}.items()}
    redirects.update({a.lower(): route_for(a) for a in ALIASES})
    json.dump({'pages': redirects, 'images': moved}, open(os.path.join(HERE, 'redirects.json'), 'w'), indent=1, sort_keys=True, ensure_ascii=False)

    sep = '(?::|%3A)'
    rules = [
        '# Generado por legacy/build.py — no editar a mano. Va en /etc/nginx/conf.d/ (contexto http).',
        '# URLs de Oracle APEX (/ords/PDB1/f?p=102:<página o alias>[:sesión[:…]]) -> ruta limpia del sitio',
        'map $arg_p $grupokasto_legacy_path {',
        '    default "/";',
    ]
    for key, dest in sorted(redirects.items(), key=lambda kv: (not kv[0].isdigit(), int(kv[0]) if kv[0].isdigit() else 0, kv[0])):
        rules.append(f'    "~*^{APP}{sep}{re.escape(key)}({sep}.*)?$" "{dest}";')
    rules += [
        '}',
        '',
        '# Fotos del sitio anterior que se optimizaron (…/foto.png -> …/foto.webp); los enlaces externos siguen funcionando',
        'map $uri $grupokasto_static_moved {',
        '    default "";',
    ]
    for old, new in sorted(moved.items()):
        rules.append(f'    "{old}" "{new}";')
    rules += ['}', '']
    open(os.path.join(ROOT, 'deploy', 'nginx-grupokasto-apex-map.conf'), 'w').write('\n'.join(rules))

    size = sum(os.path.getsize(os.path.join(d, f)) for d, _, fs in os.walk(OUT) for f in fs)
    print(f'{len(published)} páginas · {len(redirects)} redirecciones de APEX · {size / 1e6:.0f} MB en legacy/site/')


if __name__ == '__main__':
    main()
