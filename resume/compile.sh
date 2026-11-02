#!/usr/bin/env bash
# Build locally, then replace the website PDF only after a successful compile.
set -euo pipefail

resume_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$resume_dir/source"
build_dir="$resume_dir/build"
public_pdf="$resume_dir/../public/manoj-babu-katragadda-resume.pdf"

if ! command -v tectonic >/dev/null 2>&1; then
  printf 'Error: tectonic is required. On macOS: brew install tectonic\n' >&2
  exit 1
fi

mkdir -p "$build_dir"
cd "$source_dir"
tectonic --keep-logs --outdir "$build_dir" resume.tex

# Stage beside the destination so the final rename is atomic.
staged_pdf="$(mktemp "${public_pdf}.XXXXXX")"
trap 'rm -f "$staged_pdf"' EXIT
cp "$build_dir/resume.pdf" "$staged_pdf"
chmod 644 "$staged_pdf"
mv -f "$staged_pdf" "$public_pdf"
printf '\nBuilt: %s\nPublished locally: %s\n' "$build_dir/resume.pdf" "$public_pdf"
