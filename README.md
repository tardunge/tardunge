# Manoj Babu

**Fractional Engineer — Data / Platform**  
Bali · UTC+8

I build the infrastructure behind data, ML, and backend systems—turning distributed complexity into dependable paths for teams to ship.

My work sits where platform engineering, distributed data systems, and developer experience meet. I care about declarative interfaces, safe defaults, observable execution, and explicit escape hatches.

## Current focus

- Fractional data and platform engineering engagements
- Cost-efficient Spark and Kubernetes infrastructure
- Apache Iceberg lakehouse operations
- Declarative MLOps and developer platforms
- Backend architecture and distributed systems

## Selected open source

- [Prefect Spark on Kubernetes](https://github.com/tardunge/prefect-spark-on-k8s-operator) — orchestration and monitoring for Spark jobs through the Spark-on-Kubernetes operator
- [Talaria Spark Connector](https://github.com/talariadb/talaria-spark-connector) — Apache Spark connector for TalariaDB
- [kmux-status](https://github.com/tardunge/kmux-status) — tmux status-line context for Kubernetes workflows

I also contribute to and work around Apache Iceberg, Trino, LakeFS, Prefect, Cube.js, and TalariaDB. I presented the Prefect and Spark-on-Kubernetes work at PyCon Malaysia 2023.

## Core stack

```text
platform  Kubernetes · Terraform · Docker · AWS · GCP
data      Spark · Iceberg · Trino · Airflow · Prefect
code      Go · Python · Rust · Java · Node.js
```

## Contact

- Website: [tardunge.com](https://tardunge.com)
- LinkedIn: [manojbabuiit](https://linkedin.com/in/manojbabuiit)
- Email: [manojbabuiit@gmail.com](mailto:manojbabuiit@gmail.com?subject=Fractional%20data%20platform%20engagement)

I’m available for fractional engineering engagements across data platforms, ML infrastructure, backend systems, and developer platforms.

## This repository

This repository is the source for both my GitHub profile and [tardunge.com](https://tardunge.com):

```text
README.md    → GitHub profile
Astro dist/  → tardunge.com via GitHub Pages
```

The website uses Astro and Vite, IBM Plex Sans and IBM Plex Mono, and a responsive Nord/Vim-inspired interface. It ships as static HTML and CSS with minimal client-side TypeScript.

### Local development

Requirements: Node.js 22.12 or newer, npm, and optionally [direnv](https://direnv.net/) for the committed local network configuration.

```sh
direnv allow
npm install
npm run dev
```

The development server runs at [http://localhost:3333](http://localhost:3333).

| Command | Purpose |
| --- | --- |
| `npm run dev` | Start the Astro development server |
| `npm run build` | Generate the production site in `dist/` |
| `npm run preview` | Preview the production build locally |

Most website content is defined in `src/pages/index.astro`; visual tokens and responsive styles live in `src/styles/global.css`. Pushes to `main` run `.github/workflows/deploy.yml` and deploy the production build to GitHub Pages using the `tardunge.com` custom domain.
