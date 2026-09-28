#!/usr/bin/env python3
"""
Arma el sitio viejo de Grupo Kasto (Oracle APEX, app 102) como sitio estático IDÉNTICO.

Entradas:
  old-page-recursos/grupokasto/   copia de la raíz web del servidor viejo (/static, /i, /css, …).
                                  /static/ tiene los mismos archivos que APEX sirve como #APP_IMAGES#
                                  (…/xxpokasto/r/102/files/static/v45/…), byte a byte.
  legacy/capture/pages/           HTML renderizado de cada página (legacy/capture.py)
  legacy/capture/extra/           recursos que no venían en la raíz web

Salida: legacy/site/
  index.html          el mismo redirect del servidor viejo ( / -> /ords/PDB1/f?p=102:1 )
  _apex/p<N>.html     cada página; Nginx la sirve en su URL original /ords/PDB1/f?p=102:<N>
  static/, i/, …      la raíz web del servidor viejo
  _ext/               imágenes y CSS que antes se pedían a molinosgrupokasto.com

Cambios mínimos respecto al original (la página se ve y se comporta igual):
  - los enlaces absolutos a https://www.grupokasto.com/ords/… se vuelven relativos al dominio,
    para poder revisar el clon en otro dominio sin saltar al servidor viejo
  - la sesión de APEX de la captura se vuelve 0 (páginas públicas)
  - el formulario de Contacto (antes APEX_MAIL) manda el mensaje a la API del sitio
    (server/api.mjs, el mismo destino comunicacion@grupokasto.com)

Uso:  python3 legacy/build.py
"""
import os, re, shutil, glob, json

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.join(HERE, '..')
WEBROOT = os.path.join(ROOT, 'old-page-recursos', 'grupokasto')
CAPTURE = os.path.join(HERE, 'capture')
EXPORT = os.path.join(HERE, 'apex-export', 'application', 'pages')
OUT = os.path.join(HERE, 'site')
APP = '102'

CONTACT_SHIM = '''
<script>
/* Clon estático: APEX_MAIL ya no existe aquí. El botón "Enviar" manda el mensaje a la API del sitio
   (server/api.mjs -> comunicacion@grupokasto.com) y muestra el mismo aviso de éxito de siempre.
   Si la API no responde, abre el correo del visitante con el mensaje listo. */
document.addEventListener('click', function (e) {
  var btn = e.target.closest && e.target.closest('#B443720737605116420');
  if (!btn || !document.getElementById('P2_NOMBRE')) return;
  e.preventDefault(); e.stopImmediatePropagation();
  var v = function (id) { var el = document.getElementById(id); return el ? el.value.trim() : ''; };
  var sel = document.getElementById('P2_UNIDAD_NEGOCIO');
  var unidad = sel && sel.selectedIndex > 0 ? sel.options[sel.selectedIndex].text : '';
  if (!v('P2_NOMBRE') || !v('P2_EMAIL') || !v('P2_MENSAJE')) { alert('Completa nombre, email y mensaje.'); return; }
  var data = { kind: 'contacto', name: v('P2_NOMBRE'), email: v('P2_EMAIL'), phone: v('P2_TELEFONO'),
               unit: unidad, message: v('P2_MENSAJE'), page: location.pathname + location.search, privacy: true, privacyVersion: 'sitio-anterior' };
  var ok = function () {
    ['P2_NOMBRE', 'P2_EMAIL', 'P2_TELEFONO', 'P2_MENSAJE'].forEach(function (id) { document.getElementById(id).value = ''; });
    if (sel) sel.selectedIndex = 0;
    var a = document.getElementById('alerta_exito'); a.style.display = 'block';
    setTimeout(function () { a.style.display = 'none'; }, 5000);
  };
  var fallback = function () {
    var body = 'Nombre: ' + data.name + '\\nEmail: ' + data.email + '\\nTeléfono: ' + data.phone +
               '\\nUnidad de negocio: ' + data.unit + '\\n\\n' + data.message + '\\n\\nEnviado desde grupokasto.com';
    location.href = 'mailto:comunicacion@grupokasto.com?subject=' + encodeURIComponent('Nueva consulta desde grupokasto.com') +
                    '&body=' + encodeURIComponent(body);
  };
  btn.disabled = true;
  fetch('/api/contacto', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(data) })
    .then(function (r) { return r.json().then(function (j) { if (!r.ok || !j.ok) throw j; ok(); }); })
    .catch(function (j) { if (j && j.message && j.ok === false) alert(j.message); else fallback(); })
    .then(function () { btn.disabled = false; });
}, true);
</script>
'''


def copytree(src, dst):
    if os.path.isdir(src):
        shutil.copytree(src, dst, dirs_exist_ok=True,
                        ignore=shutil.ignore_patterns('.DS_Store', 'Thumbs.db', '*.php', '*.bak'))


def aliases():
    """Alias de página definidos en APEX (p. ej. f?p=102:HOME)."""
    out = {}
    for path in glob.glob(os.path.join(EXPORT, 'page_*.sql')):
        src = open(path, encoding='utf-8').read()
        a = re.search(r"p_alias=>'([^']+)'", src)
        n = re.search(r'wwv_flow_api\.create_page\(\s*p_id=>(\d+)', src)
        if a and n:
            out[a.group(1).upper()] = int(n.group(1))
    return out


def clean(html, pid):
    # La sesión de la captura -> 0 (en las URLs y en el formulario de APEX)
    m = re.search(r'id="pInstance"', html) and re.search(r'name="p_instance" value="(\d+)"', html)
    if m:
        html = html.replace(m.group(1), '0')
    # Enlaces absolutos al propio sitio -> relativos al dominio
    html = re.sub(r'https?://(?:www\.)?grupokasto\.com/ords/', '/ords/', html)
    # Recursos externos copiados localmente
    html = re.sub(r'https?://(molinosgrupokasto\.com/(?:PortalGK/assets|img)/)', r'/_ext/\1', html)
    # Mensajes de JS de APEX: archivo estático
    html = re.sub(r'wwv_flow\.js_messages\?[^"]+', 'wwv_flow.js_messages.js', html)
    if pid == 2:
        html = html.replace('</body>', CONTACT_SHIM + '</body>', 1)
    return html


def main():
    if os.path.isdir(OUT):
        shutil.rmtree(OUT)
    os.makedirs(os.path.join(OUT, '_apex'))

    copytree(WEBROOT, OUT)
    copytree(os.path.join(CAPTURE, 'extra'), OUT)
    # Mismo redirect que el index.html del servidor viejo, pero relativo al dominio
    open(os.path.join(OUT, 'index.html'), 'w').write(
        '<html>\n<head>\n\t<meta http-equiv="Refresh" content="0; url=\'/ords/PDB1/f?p=102:1\'" />\n'
        '</head>\n<body>\n\t\n</body>\n</html>\n')

    pages = sorted(glob.glob(os.path.join(CAPTURE, 'pages', 'p*.html')), key=lambda p: int(re.sub(r'\D', '', os.path.basename(p))))
    for path in pages:
        pid = int(re.sub(r'\D', '', os.path.basename(path)))
        html = open(path, encoding='utf-8').read()
        open(os.path.join(OUT, '_apex', f'p{pid}.html'), 'w', encoding='utf-8').write(clean(html, pid))

    al = aliases()
    json.dump(al, open(os.path.join(OUT, '_apex', 'aliases.json'), 'w'), indent=1, sort_keys=True)

    # Mapa para Nginx: f?p=102:<número|alias>[:sesión[:…]] -> archivo de la página
    sep = '(?::|%3A)'
    ids = {int(re.sub(r'\D', '', os.path.basename(p))) for p in pages}
    rules = [
        '# Generado por legacy/build.py — no editar a mano. Va en /etc/nginx/conf.d/ (contexto http).',
        'map $arg_p $grupokasto_apex_page {',
        '    default "p1";',
    ]
    for n in sorted(ids):
        rules.append(f'    "~^{APP}{sep}{n}({sep}.*)?$" "p{n}";')
    for alias, n in sorted(al.items()):
        if n in ids:
            rules.append(f'    "~*^{APP}{sep}{re.escape(alias)}({sep}.*)?$" "p{n}";')
    rules += ['}', '']
    open(os.path.join(ROOT, 'deploy', 'nginx-grupokasto-apex-map.conf'), 'w').write('\n'.join(rules))

    size = sum(os.path.getsize(os.path.join(d, f)) for d, _, fs in os.walk(OUT) for f in fs)
    print(f'{len(pages)} páginas · {len(al)} alias · {size / 1e6:.0f} MB en legacy/site/')


if __name__ == '__main__':
    main()
