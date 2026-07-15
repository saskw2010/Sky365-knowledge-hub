# Sky365 Knowledge Hub

> The canonical central knowledge and documentation repository for WytSky / Sky365.

This repository consolidates architecture, agentic AI blueprints, research, product strategy, multimodal capabilities, security, prompts, skills, training, domain platforms, decisions, and roadmaps without erasing the indexes or provenance of the source repositories.

## Operating principles

1. **Preserve first, consolidate second.**
2. **Never delete a source index during migration.**
3. **Every imported file keeps its original repository and path.**
4. **Canonical documents live under `documents/`.**
5. **Imported source snapshots live under `sources/`.**
6. **Repository-specific implementation evidence remains beside the code and is linked here.**
7. **Check first, then implement only what is missing or broken.**
8. **Markdown is the source of truth; HTML is the visual experience.**

## Initial structure

```text
Sky365-knowledge-hub/
├── README.md
├── MASTER-INDEX.md
├── REPOSITORY-SOURCES.md
├── MIGRATION-MAP.md
├── OWNERSHIP-MAP.md
├── index.html
├── documents/
│   ├── 00-vision/
│   ├── 01-agentic-platform/
│   ├── 02-safety-governance/
│   ├── 03-multimodal/
│   ├── 04-prompt-skill-engineering/
│   ├── 05-agent-training/
│   ├── 06-domain-platforms/
│   ├── 07-blueprints/
│   ├── 08-research/
│   ├── 09-decisions/
│   ├── 10-roadmaps/
│   ├── visual-docs/
│   └── archive/
├── sources/
│   ├── Sky365Offers/
│   ├── all-agentic-architectures/
│   ├── sky365ERP/
│   └── sky365API/
└── .github/workflows/
    └── deploy-pages.yml
```

## Source repositories

The first migration sources are:

- `saskw2010/Sky365Offers`
- `saskw2010/all-agentic-architectures`
- `saskw2010/sky365ERP`
- `saskw2010/sky365API`

Source repositories remain valid implementation or historical sources. This hub becomes the canonical home for cross-project knowledge after each document is reviewed and promoted from `sources/` to `documents/`.

## Migration states

```text
Discovered
→ Imported unchanged
→ Indexed
→ Duplicate reviewed
→ Canonical candidate
→ Consolidated
→ Published
→ Source pointer retained
```

## GitHub Pages

The portal is published automatically from the repository root through GitHub Actions.
