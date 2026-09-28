// PM2: API del formulario de contacto. Uso en el servidor: pm2 startOrReload ecosystem.config.cjs
// Los secretos (RESEND_API_KEY…) van en .env junto a este archivo (no se sube a git; ver .env.example).
const fs = require('node:fs');
const path = require('node:path');

function loadEnv(file) {
  if (!fs.existsSync(file)) return {};
  return Object.fromEntries(
    fs
      .readFileSync(file, 'utf8')
      .split('\n')
      .filter((l) => l.trim() && !l.trim().startsWith('#') && l.includes('='))
      .map((l) => {
        const i = l.indexOf('=');
        return [l.slice(0, i).trim(), l.slice(i + 1).trim().replace(/^['"]|['"]$/g, '')];
      }),
  );
}

module.exports = {
  apps: [
    {
      name: 'grupokasto-api',
      script: 'server/api.mjs',
      cwd: __dirname,
      instances: 1,
      exec_mode: 'fork',
      autorestart: true,
      max_memory_restart: '150M',
      env: {
        NODE_ENV: 'production',
        PORT: '4012',
        ...loadEnv(path.join(__dirname, '.env')),
      },
    },
  ],
};
