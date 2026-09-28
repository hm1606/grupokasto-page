#!/usr/bin/env python3
"""
Captura el sitio viejo de Grupo Kasto (Oracle APEX, app 102) tal como lo entrega el servidor:
el HTML ya renderizado de cada página y los pocos recursos que NO vienen en la copia de la raíz
web del servidor viejo (old-page-recursos/grupokasto).

Salida (se versiona en git, así el clon no depende de que el servidor viejo siga vivo):
  legacy/capture/pages/p<N>.html     HTML de /ords/PDB1/f?p=102:<N>
  legacy/capture/extra/<ruta>        /i/… faltantes, wwv_flow.js_messages e imágenes/CSS externos
                                     (molinosgrupokasto.com, apex.oracle.com) que usan las páginas

Uso:  python3 legacy/capture.py            (solo hace falta volver a correrlo si cambia el sitio viejo)
Después:  python3 legacy/build.py
"""
import os, re, sys, glob, urllib.request, urllib.parse

HERE = os.path.dirname(os.path.abspath(__file__))
BASE = 'https://www.grupokasto.com/ords/PDB1/'
PAGES = list(range(1, 47)) + [9999]
WEBROOT = os.path.join(HERE, '..', 'old-page-recursos', 'grupokasto')
OUT_PAGES = os.path.join(HERE, 'capture', 'pages')
OUT_EXTRA = os.path.join(HERE, 'capture', 'extra')

# Recursos externos que se copian localmente (si esos servidores cambian, el clon no se rompe)
EXTERNAL = re.compile(r'https?://(?:molinosgrupokasto\.com/(?:PortalGK/assets|img)|apex\.oracle\.com/pls/apex/gkasto/r/\d+/files)/[^"\'\s)]+\.(?:png|jpe?g|gif|svg|webp|css)')


def get(url):
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0 (clon Grupo Kasto)'})
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read()


def save(path, data):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    open(path, 'wb').write(data)


def main():
    os.makedirs(OUT_PAGES, exist_ok=True)
    for n in PAGES:
        html = get(f'{BASE}f?p=102:{n}')
        save(os.path.join(OUT_PAGES, f'p{n}.html'), html)
        print(f'p{n:<5} {len(html):>7} bytes')

    wanted = set()
    for f in glob.glob(os.path.join(OUT_PAGES, 'p*.html')):
        s = open(f, encoding='utf-8', errors='replace').read()
        # APEX: /i/… (lo que no venga en la raíz web) y los mensajes de JS
        for u in re.findall(r'"(/i/[^"?]+)', s):
            if not os.path.exists(os.path.join(WEBROOT, u.lstrip('/'))):
                wanted.add(('https://www.grupokasto.com' + u, u.lstrip('/')))
        for u in re.findall(r'"(wwv_flow\.js_messages\?[^"]+)"', s):
            wanted.add((BASE + u.replace('&amp;', '&'), 'ords/PDB1/wwv_flow.js_messages.js'))
        for u in EXTERNAL.findall(s):
            p = urllib.parse.urlsplit(u)
            wanted.add((u, '_ext/' + p.netloc + p.path))

    for url, rel in sorted(wanted):
        try:
            data = get(url)
        except Exception as e:  # noqa: BLE001
            print(f'  ✗ {url}: {e}', file=sys.stderr)
            continue
        save(os.path.join(OUT_EXTRA, rel), data)
        print(f'  + {rel}')
        # Las hojas de estilo externas pueden pedir imágenes relativas
        if rel.endswith('.css'):
            for ref in re.findall(r'url\(\s*[\'"]?([^\'")]+)', data.decode('utf-8', 'replace')):
                if ref.startswith(('data:', 'http', '/')):
                    continue
                sub = urllib.parse.urljoin(url, ref)
                sub_rel = '_ext/' + urllib.parse.urlsplit(sub).netloc + urllib.parse.urlsplit(sub).path
                try:
                    save(os.path.join(OUT_EXTRA, sub_rel), get(sub))
                    print(f'  + {sub_rel}')
                except Exception as e:  # noqa: BLE001
                    print(f'  ✗ {sub}: {e}', file=sys.stderr)


if __name__ == '__main__':
    main()
