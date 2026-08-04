import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import expressiveCode from 'astro-expressive-code';
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
  integrations: [
    expressiveCode({
      themes: ['github-light', 'nord'],
      themeCssSelector: (theme) =>
        theme.name === 'nord'
          ? ":root:not([data-theme='light'])"
          : ":root[data-theme='light']",
      defaultProps: {
        wrap: true,
      },
      styleOverrides: {
        borderRadius: '0',
        codeFontFamily: "var(--font-mono, 'IBM Plex Mono', ui-monospace, monospace)",
        codeFontSize: '0.84rem',
        borderColor: 'var(--border)',
        codeBackground: 'var(--surface-raised)',
        frames: {
          editorBackground: 'var(--surface-raised)',
          terminalBackground: 'var(--surface-raised)',
          editorTabBarBackground: 'var(--surface)',
          terminalTitlebarBackground: 'var(--surface)',
        },
      },
    }),
    mdx(),
    sitemap(),
  ],
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
