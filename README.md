# Manoj Babu

**Principal Engineer — Data & ML Platforms**<br>
Remote · Asia

I build reusable data and ML platforms, backed by hands-on work in distributed systems, database internals, connectors, and performance optimization.

My work spans the infrastructure teams build on and the internals that make it reliable. I care about declarative interfaces, safe defaults, observable execution, and explicit escape hatches—systems engineers can use without giving up control.

## Current focus

- Full-time principal engineering roles in data and platform systems
- Cost-efficient Spark and Kubernetes infrastructure
- Apache Iceberg lakehouse operations
- Declarative MLOps and developer platforms
- Backend architecture and distributed systems

## Platforms and engineering work

- **[Zest](https://tardunge.com/blog/what-we-learned-building-our-ml-platform/)** — an MLOps platform with a declarative Python SDK, an AST-based compiler, resource dependency resolution, artifact versioning, and isolated workspaces.
- **[Lakehouse Spark Core](https://tardunge.com/blog/building-a-composable-etl-framework/)** — a composable PySpark ETL framework with reusable hooks, pluggable processing stages, and Write-Audit-Publish quality gates; reduced total code per comparable pipeline by **75%**.
- **[Spark MERGE optimization](https://tardunge.com/blog/spark-merge-optimization-from-60-to-4-minutes/)** — reduced a daily MERGE job from **60 minutes to 4 minutes** on a two-billion-row Iceberg table.
- **[Spark on Kubernetes](https://tardunge.com/blog/spark-on-spot-with-s3-shuffle/)** — S3-backed shuffle and spot executors reduced **Spark compute costs by 90%**, with individual production jobs processing **10TB+ of input per run**.
- **[Airflow orchestration and DAG delivery](https://tardunge.com/blog/airflow-dag-bundles-without-helm-upgrades/)** — Kubernetes job orchestration, Ray operators, asynchronous Redis triggers, and hot-reloaded DAG bundles.
- **[Iceforge](https://tardunge.com/blog/building-our-lakehouse-with-iceberg/)** — Rust-native Iceberg table analysis for file distribution, snapshot health, and orphan detection; part of the broader lakehouse work.

## Open source and developer tooling

- **[Talaria](https://github.com/tardunge/talaria)** — contributor and maintainer; work on ingestion and flush engines, shared encoding, Parquet/ORC handling, and Google Cloud integrations.
- **[Talaria Spark Connector](https://github.com/talariadb/talaria-spark-connector)** — authored the Java DataSource V2 connector for batch and streaming reads, connecting Talaria data to Spark processing and Iceberg outputs.
- **[Spark S3 shuffle fork](https://github.com/tardunge/spark-s3-shuffle)** — repaired cache and prefetch deadlocks; added bounded waits, Spark 4.0/Scala 2.13 support, and reliable-storage declarations for executor decommissioning.
- **[Prefect Spark on Kubernetes](https://github.com/tardunge/prefect-spark-on-k8s-operator)** — scheduling and monitoring Spark jobs through the Kubernetes operator; presented at **PyCon Malaysia 2023**.
- **[Prefect lakeFS integration](https://github.com/limx0/prefect-lakefs)** — authored integration work for scheduled lakeFS housekeeping.
- **[Bob](https://github.com/tardunge/bob)** — a voice interface for AI coding agents, integrating Pi, OMP, and Claude with local speech, MCP profiles, and durable background jobs. An extension of my developer-platform work.
- **[kmux-status](https://github.com/tardunge/kmux-status)** — tmux status-line context for Kubernetes workflows.

## Core stack

```text
platform     Kubernetes · Terraform · Docker · AWS · GCP
data         Spark · Iceberg · Trino · Airflow · Prefect
languages    Go · Python · Rust · Java · Node.js · TypeScript · Lua · Nix
environment  Unix · Zsh · Tmux · Neovim · OMP
databases    Postgres · BigQuery · Redshift · Talaria
```

## Contact

- Website: [tardunge.com](https://tardunge.com)
- LinkedIn: [manojbabuiit](https://linkedin.com/in/manojbabuiit)
- Email: [manojbabukatragadda@gmail.com](mailto:manojbabukatragadda@gmail.com?subject=Full-time%20Principal%20Engineer%20role)

I’m looking for **full-time Principal Engineer roles** building data, ML, and backend platforms. If your team needs hands-on architecture, production engineering, and long-term technical ownership, let’s talk.

