# Target Repository Tree

## Objective

Create a stable structure that separates public experiences, canonical knowledge, venture operations, governance, preserved sources and automation while keeping GitHub as the control plane.

## Target logical architecture

```text
Sky365-knowledge-hub/
├── README.md
├── index.html
├── MASTER-INDEX.md
│
├── site/
│   ├── portal/
│   ├── strategy/
│   ├── investment/
│   ├── academy/
│   ├── learning-paths/
│   ├── agentic-design-studio/
│   └── tree/
│
├── knowledge/
│   ├── 00-vision/
│   ├── 01-strategy/
│   ├── 02-domains/
│   ├── 03-capabilities/
│   ├── 04-products/
│   ├── 05-architecture/
│   ├── 06-specifications/
│   ├── 07-blueprints/
│   ├── 08-research/
│   ├── 09-decisions/
│   ├── 10-roadmaps/
│   └── 11-visual-docs/
│
├── ventures/
│   ├── research/
│   ├── experiments/
│   ├── promising-projects/
│   ├── investment-ready/
│   └── portfolio/
│
├── governance/
├── sources/
├── automation/
│   ├── build/
│   ├── validation/
│   └── migration/
├── assets/
└── .github/
```

## Architectural boundaries

### `site/`

Public and interactive experiences. These pages present knowledge but do not own canonical business facts.

### `knowledge/`

The canonical documentation system. Classification follows the lifecycle from vision and strategy through products, architecture, decisions and roadmaps.

### `ventures/`

The operating lifecycle for moving ideas from research and experiments into promising projects and investment-ready opportunities.

### `governance/`

Structural rules, ownership, migration ledgers, repository census, validation reports and decision controls.

### `sources/`

Immutable or preserve-first source evidence, manifests, inventories and original indexes.

### `automation/`

Build, conversion, validation, migration and publishing tools.

## Migration constraint

This is a target logical model, not authorization for immediate physical movement. The current public URLs remain supported until redirects, link validation and ownership approval are complete.
