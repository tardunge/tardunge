# tardunge.com

Personal website for [Manoj Babu](https://github.com/tardunge), a fractional engineer focused on data and platform systems.

**Live site:** [tardunge.com](https://tardunge.com)

## Stack

- [Astro](https://astro.build/) and Vite
- Static HTML, CSS, and minimal client-side TypeScript
- IBM Plex Sans and IBM Plex Mono via Fontsource
- GitHub Pages with a custom domain

The interface uses the Nord palette and a restrained Vim-inspired visual system: buffers for navigation, syntax-aware typography, line-number rails, and a status line.

## Local development

Requirements:

- Node.js 22.12 or newer
- npm
- [direnv](https://direnv.net/) for the committed local network configuration

```sh
direnv allow
npm install
npm run dev
```

The development server runs at [http://localhost:3333](http://localhost:3333). It also binds to the local network using the hostnames configured in `.envrc`.

## Commands

| Command | Purpose |
| --- | --- |
| `npm run dev` | Start the Astro development server |
| `npm run build` | Generate the production site in `dist/` |
| `npm run preview` | Preview the production build locally |

## Project structure

```text
src/
├── layouts/Layout.astro    # Document shell, metadata, and initial theme
├── pages/index.astro       # Portfolio content and interactions
└── styles/global.css       # Nord themes and responsive design
public/
├── CNAME                   # GitHub Pages custom domain
├── favicon.svg
└── manoj-babu-katragadda-resume.pdf
```

## Deployment

Pushes to `main` run `.github/workflows/deploy.yml`, build the static Astro site, and deploy it to GitHub Pages. The production URL and canonical metadata are configured for `https://tardunge.com` in `astro.config.mjs`.

The custom domain requires:

- Four GitHub Pages `A` records for the apex domain
- A `www` CNAME pointing to `tardunge.github.io`
- GitHub Pages configured to use `tardunge.com`

## Content updates

Most content is defined as structured arrays in `src/pages/index.astro`. Global visual tokens, breakpoints, and component styles live in `src/styles/global.css`.
