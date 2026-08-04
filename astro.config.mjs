import { defineConfig } from 'astro/config';
const host = process.env.SITE_HOST || '127.0.0.1';
const port = Number(process.env.SITE_PORT || 3333);
const allowedHosts = (
  process.env.SITE_ALLOWED_HOSTS || 'localhost,127.0.0.1'
)
  .split(',')
  .map((allowedHost) => allowedHost.trim())
  .filter(Boolean);

export default defineConfig({
  site: 'https://tardunge.com',
  base: '/',
  server: {
    host,
    port,
  },
  build: {
    format: 'directory',
  },
  vite: {
    server: {
      host,
      port,
      strictPort: true,
      allowedHosts,
    },
    preview: {
      host,
      port,
      strictPort: true,
      allowedHosts,
    },
  },
});
