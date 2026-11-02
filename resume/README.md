# Resume source and build

The editable resume lives in this directory. The website uses one published
artifact: [`../public/manoj-babu-katragadda-resume.pdf`](../public/manoj-babu-katragadda-resume.pdf).
Paths below are relative to the repository root unless noted otherwise.

```text
resume/
  compile.sh                 Build with Tectonic; update the public PDF on success
  source/
    resume.tex               Document entry point and section order
    profile.tex              Name, title, location, contact URLs, and footer
    content/                 Introduction, experience, skills, contributions, education
    resume.cls               Typography, colors, spacing, and reusable components
    fonts/                   Original, locally bundled font files
  licenses/                  Complete third-party license texts
  THIRD-PARTY.md              Attribution and modification notices
  build/                     Generated PDF and compiler log; ignored by Git
```

Install [Tectonic](https://tectonic-typesetting.github.io/) (`brew install
tectonic` on macOS). The build has been verified with Tectonic 0.17.0. The first
run needs internet access to download TeX packages; fonts are bundled locally.
From the repository root:

```sh
npm run build:resume
```

Alternatively, run `bash /path/to/tardunge/resume/compile.sh` from any directory;
Node and npm are not required for the direct script. It writes
`resume/build/resume.pdf` and `resume/build/resume.log`, then atomically replaces
the public PDF. A failed compilation leaves the published PDF unchanged.
No PDF is copied to the repository root.

Within `source/`, edit prose in `content/*.tex` and personal details in
`profile.tex`; keep visual rules in `resume.cls`. Use `\cvlink{URL}{label}` for
bold linked text and `\cvcontact{icon}{URL}{label}` for contacts (`whatsapp`,
`email`, `website`, `github`, `linkedin`). Experience entries take role,
company, full company URL, location, dates, and achievement list, in that
order. The explicit page break before Honestbee remains in the experience content.

Commit source changes together with the rebuilt public PDF. The existing
GitHub Pages workflow builds Astro from that PDF; it deliberately does not
install TeX or regenerate the resume. To check the complete website locally,
use Node 24 (matching deployment), then:

```sh
npm ci
npm run build:resume
npm run build
npm run preview
```

All website download links point to the public PDF; Astro copies it into
`dist/` during the site build. Local build commands do not deploy anything.
Third-party licensing and the renamed Awesome-CV derivative are documented in
[`THIRD-PARTY.md`](THIRD-PARTY.md).

## Narrative and outcome conventions

The profile, website, and resume lead with Principal Engineer, full-time roles,
and `Remote · Asia`. Reusable data/ML platforms are the main story, supported
by distributed-systems, database, connector, and performance work. Agent tooling
is supporting developer-platform work. Historical public career entries omit
the Consultant qualifier; career dates remain unchanged.

Keep the owner-confirmed metric scopes consistent across the PDF and case studies:

- **90%** reduction in Spark compute costs, not total infrastructure costs.
- **75%** less total code per comparable pipeline.
- **10TB+** of input processed by individual production jobs per run.

The spot article's **70–85%** pricing calculation is an illustrative example,
not a substitute for the measured production result. Do not invent measurement
baselines, periods, or exclusive ownership of team outcomes.

The root `README.md` is the GitHub profile: keep it reader-facing. Build and
maintenance instructions belong here, not in the profile.
