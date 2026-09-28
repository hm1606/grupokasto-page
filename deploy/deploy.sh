#!/usr/bin/env bash
# Despliegue de grupokasto.com
# Uso (en el servidor):  bash /var/www/grupokasto-page/deploy/deploy.sh
#
# Siempre publica:
#   - sitio nuevo (Astro)          -> /var/www/grupokasto-site     revisión: grupokasto.82-180-133-158.sslip.io
#   - clon del sitio viejo (APEX)  -> /var/www/grupokasto-legacy   revisión: grupokasto-legacy.82-180-133-158.sslip.io
#   - API del formulario (PM2 grupokasto-api, puerto 4012)
# Producción (www.grupokasto.com) solo cuando se indica, porque requiere DNS y certificado:
#   GK_PROD=legacy bash deploy/deploy.sh   -> www.grupokasto.com sirve el clon del sitio viejo
#   GK_PROD=nuevo  bash deploy/deploy.sh   -> www.grupokasto.com sirve el sitio nuevo (301 desde las URLs viejas)
# Después, GK_PROD ya no hace falta: se respeta lo que esté instalado.
set -euo pipefail

APP=/var/www/grupokasto-page
SITE=/var/www/grupokasto-site
LEGACY=/var/www/grupokasto-legacy
BRANCH=${DEPLOY_BRANCH:-main}
PROD_CONF=/etc/nginx/sites-available/grupokasto.com
REVIEW_CERT=/etc/letsencrypt/live/grupokasto.82-180-133-158.sslip.io/fullchain.pem

cd "$APP"
# git reset puede reescribir este script mientras bash lo lee: tras actualizar, se vuelve a ejecutar
if [ "${GK_DEPLOY_FRESH:-}" != 1 ]; then
  echo "→ Bajando lo último de GitHub ($BRANCH)…"
  git fetch --quiet origin "$BRANCH"
  git checkout --quiet -B "$BRANCH" "origin/$BRANCH"
  git reset --hard --quiet "origin/$BRANCH"
  GK_DEPLOY_FRESH=1 exec bash "$APP/deploy/deploy.sh" "$@"
fi

# ¿Qué sirve hoy producción? (se conserva salvo que GK_PROD diga otra cosa)
MODE=${GK_PROD:-}
if [ -z "$MODE" ] && [ -f "$PROD_CONF" ]; then
  if grep -q grupokasto-nuevo-site "$PROD_CONF"; then MODE=nuevo; else MODE=legacy; fi
fi
# El sitio nuevo se compila para el dominio donde se verá (canónicas, sitemap, imágenes para compartir)
if [ "$MODE" = nuevo ]; then
  export SITE_URL=https://www.grupokasto.com NOINDEX=0
else
  if [ -f "$REVIEW_CERT" ]; then export SITE_URL=https://grupokasto.82-180-133-158.sslip.io; else export SITE_URL=http://grupokasto.82-180-133-158.sslip.io; fi
  export NOINDEX=1
fi

echo "→ Instalando dependencias…"
# El lock se genera en macOS; si le faltan binarios opcionales de Linux (sharp), se usa npm install
npm ci --no-audit --no-fund --loglevel=error 2>/dev/null || npm install --no-audit --no-fund --loglevel=error

echo "→ Compilando sitio nuevo para $SITE_URL (noindex=$NOINDEX)…"
npm run build --silent

echo "→ Publicando sitio nuevo…"
mkdir -p "$SITE"
rsync -a --delete --exclude /nginx dist/ "$SITE/"

echo "→ Publicando clon del sitio viejo…"
mkdir -p "$LEGACY"
rsync -a --delete legacy/site/ "$LEGACY/"

echo "→ API del formulario (PM2)…"
pm2 startOrReload ecosystem.config.cjs --update-env >/dev/null
pm2 save >/dev/null

echo "→ Configuración de Nginx…"
REVIEW_SRC=deploy/nginx-grupokasto-revision.conf
[ -f "$REVIEW_CERT" ] && REVIEW_SRC=deploy/nginx-grupokasto-revision-https.conf
CONFS=(
  "$REVIEW_SRC:/etc/nginx/sites-available/grupokasto-revision"
  "deploy/nginx-snippet-grupokasto-nuevo-site.conf:/etc/nginx/snippets/grupokasto-nuevo-site.conf"
  "deploy/nginx-snippet-grupokasto-legacy-site.conf:/etc/nginx/snippets/grupokasto-legacy-site.conf"
  "deploy/nginx-grupokasto-apex-map.conf:/etc/nginx/conf.d/grupokasto-apex-map.conf"
  "deploy/nginx-grupokasto-legacy.conf:/etc/nginx/conf.d/grupokasto-legacy.conf"
  "dist/nginx/grupokasto-redirects.conf:/etc/nginx/conf.d/grupokasto-redirects.conf"
)
SITES=(grupokasto-revision)
case "$MODE" in
  legacy) CONFS+=("deploy/nginx-grupokasto.com.conf:$PROD_CONF"); SITES+=(grupokasto.com) ;;
  nuevo) CONFS+=("deploy/nginx-grupokasto.com.sitio-nuevo.conf:$PROD_CONF"); SITES+=(grupokasto.com) ;;
esac

changed=0
for pair in "${CONFS[@]}"; do cmp -s "${pair%%:*}" "${pair#*:}" || changed=1; done
if [ "$changed" = 1 ]; then
  BK=$(mktemp -d)
  for pair in "${CONFS[@]}"; do dest="${pair#*:}"; [ -f "$dest" ] && cp -a "$dest" "$BK/$(echo "$dest" | tr / _)"; done
  for pair in "${CONFS[@]}"; do mkdir -p "$(dirname "${pair#*:}")"; cp "${pair%%:*}" "${pair#*:}"; done
  for s in "${SITES[@]}"; do ln -sf "/etc/nginx/sites-available/$s" "/etc/nginx/sites-enabled/$s"; done
  if nginx -t 2>/dev/null; then
    systemctl reload nginx
    echo "  Nginx actualizado y recargado"
  else
    # Nunca dejar Nginx roto: hay otros sitios en este servidor
    for pair in "${CONFS[@]}"; do
      dest="${pair#*:}"; saved="$BK/$(echo "$dest" | tr / _)"
      if [ -f "$saved" ]; then cp -a "$saved" "$dest"; else rm -f "$dest"; fi
    done
    for s in "${SITES[@]}"; do [ -f "/etc/nginx/sites-available/$s" ] || rm -f "/etc/nginx/sites-enabled/$s"; done
    nginx -t
    echo "  ✗ La configuración nueva falló; se restauró la anterior (¿falta el certificado de www.grupokasto.com?)" >&2
    exit 1
  fi
else
  echo "  Sin cambios"
fi

sleep 1
curl -fsS http://127.0.0.1:4012/api/health >/dev/null && echo "  API OK" || echo "  ⚠ La API no responde (pm2 logs grupokasto-api)"
echo "✓ Desplegado: $(git log -1 --format='%h — %s')"
echo "  Sitio nuevo: $SITE_URL · Sitio viejo: http://grupokasto-legacy.82-180-133-158.sslip.io/ords/PDB1/f?p=102:1"
[ -n "$MODE" ] && echo "  Producción www.grupokasto.com: $MODE"
exit 0
