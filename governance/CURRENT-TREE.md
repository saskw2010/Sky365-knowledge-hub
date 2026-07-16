# Current Repository Tree

## Purpose

This document defines the current logical structure of `Sky365-knowledge-hub` without moving files or breaking published links.

## Current top-level model

```text
Sky365-knowledge-hub/
├── README.md
├── MASTER-INDEX.md
├── REPOSITORY-SOURCES.md
├── MIGRATION-MAP.md
├── LINKS-GUIDE.md
├── index.html
├── portal/
├── strategy/
├── academy/
├── learning-paths/
├── agentic-design-studio/
├── investment/
├── sectors/
├── documents/
├── governance/
├── sources/
├── assets/
├── scripts/
└── .github/
```

## Folder responsibilities

| Area | Current responsibility | Source of truth |
|---|---|---|
| `documents/` | Canonical knowledge documents: vision, blueprints, research, ADRs and roadmaps | Markdown documents |
| `sectors/` | Operating domains such as research and investment | Sector README and pipeline documents |
| `governance/` | Repository census, migration records, mental maps and structural rules | Governance Markdown |
| `sources/` | Preserved source evidence and repository provenance | Manifests and original indexes |
| `investment/` | Public investment landing experience | `investment/index.html` |
| `portal/`, `strategy/`, `academy/`, `learning-paths/`, `agentic-design-studio/` | Public visual experiences | Each `index.html` |
| `scripts/` | Static-site generation and repository automation | Version-controlled scripts |
| `assets/` | Shared styles and static assets | Version-controlled assets |
| `.github/` | CI/CD and GitHub Pages deployment | GitHub Actions workflows |

## Current interpretation rules

1. Markdown remains the canonical documentation source.
2. HTML is the public visual experience and may be generated during deployment.
3. Source repositories are preserved under `sources/` without silently rewriting their historical meaning.
4. Public pages may link to canonical documents, but must not become a competing source of truth.
5. No folder move is approved solely to improve aesthetics; links, provenance and deployment must be protected first.

## Known overlaps

- `investment/` is the public experience, while `sectors/investment/` is canonical operating documentation.
- Root visual folders and `documents/` use different classification dimensions: experience versus knowledge type.
- The numbered document series is not yet complete for every number from `01` through `06`.
- Source manifests exist for major repositories, but full source snapshot coverage is not yet complete.

## Current decision

The existing tree remains operational. Improvements must be introduced through navigation, metadata, aliases and gradual migration rather than immediate mass relocation.
