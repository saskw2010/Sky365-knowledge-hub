# Sky365 Master Repository Census

## Purpose

This census is the authoritative inventory of repositories that contribute knowledge, product documentation, architecture, visual applications, implementation evidence, or historical context to the Sky365 Knowledge Hub.

It is intentionally iterative. Each rearrangement cycle may refine repository roles, source paths, ownership, canonical destinations, and migration status.

## Status model

- `DISCOVER` — repository or path is known but not inventoried.
- `INVENTORY` — relevant folders and files are being listed.
- `SNAPSHOT` — unchanged source material has been copied or pinned.
- `CLASSIFY` — content is being mapped to domains and ownership.
- `ADAPT` — a visual or canonical representation is being created.
- `VALIDATE` — links, assets, claims, attribution, and navigation are being checked.
- `CANONICAL` — the Knowledge Hub owns the maintained version.
- `REFERENCE` — retained as source evidence or historical context.
- `EXCLUDED` — runtime, secrets, tests, generated output, or unrelated material.

## Repository census

| Repository | Primary role | Known source areas | Current state | Canonical target | Next census action |
|---|---|---|---|---|---|
| `saskw2010/Sky365-knowledge-hub` | Canonical knowledge operating system | `documents/`, `portal/`, `academy/`, `learning-paths/`, `stories/`, `strategy/`, `agentic-design-studio/`, `sources/`, `governance/` | `CANONICAL` but structurally evolving | Repository root | Keep reorganizing indexes, navigation, and canonical domains |
| `saskw2010/all-agentic-architectures` | Historical source, visual academy, learning apps, stories, design studio, Sky365 extensions, upstream reference | `academy/`, `learning-paths/`, `stories/`, `strategy/`, `agentic-design-studio/`, root portal, visual assets | `INVENTORY` + partial `ADAPT` | `sources/all-agentic-architectures/` plus canonical visual spaces | Complete exact snapshots of HTML/CSS/JS/data/media; preserve Fareed Khan attribution for upstream-owned material |
| `FareedKhan-dev/all-agentic-architectures` | Original upstream library and architecture reference | Python package, notebooks, tests, original architecture documentation | `REFERENCE` | Source manifest and selected attributed references only | Pin upstream commit and distinguish upstream-owned content from Sky365-owned extensions |
| `saskw2010/Sky365Offers` | Legacy documentation hub, offers, blueprints, product and feature documentation | `documents/`, `docs/`, repository indexes | `DISCOVER` | `sources/Sky365Offers/` then canonical domains | Inventory exact folders, pin commit, import unchanged indexes first |
| `saskw2010/sky365ERP` | ERP implementation evidence, architecture, modules, UI and domain documentation | Documentation locations not yet fully enumerated | `DISCOVER` | `sources/sky365ERP/` and domain-platform evidence | Discover README/docs/design/architecture paths and classify implementation evidence |
| `saskw2010/sky365API` | API contracts, integration architecture, backend implementation evidence | Documentation locations not yet fully enumerated | `DISCOVER` | `sources/sky365API/` and integration-platform evidence | Discover OpenAPI, README, docs, architecture and integration files |

## Content-family census

| Content family | Source of truth today | Canonical destination | Migration maturity |
|---|---|---|---|
| Platform vision and ownership | Knowledge Hub documents and conversations | `documents/00-vision/` | Partial |
| Agentic runtime and action architecture | Knowledge Hub blueprints + implementation repositories | `documents/01-agentic-platform/` | Partial |
| Safety and governance | Knowledge Hub decisions + source security docs | `documents/02-safety-governance/` | Partial |
| Multimodal intelligence | Knowledge Hub blueprints and research | `documents/03-multimodal/` | Partial |
| Prompt and skill engineering | Knowledge Hub research and source implementation notes | `documents/04-prompt-skill-engineering/` | Early |
| Agent training and evaluation | Knowledge Hub research tracks | `documents/05-agent-training/` | Early |
| Domain platforms | ERP/API/source repositories and product notes | `documents/06-domain-platforms/` | Early |
| Blueprints | Knowledge Hub | `documents/07-blueprints/` | Canonical but incomplete |
| Research | Knowledge Hub | `documents/08-research/` | Canonical but incomplete |
| Decisions | Knowledge Hub | `documents/09-decisions/` | Canonical but incomplete |
| Roadmaps | Knowledge Hub | `documents/10-roadmaps/` | Canonical but incomplete |
| Visual applications | all-agentic source plus adapted Knowledge Hub entries | `visual-apps/` or stable top-level routes | Partial |
| Source snapshots | Source repositories | `sources/{repository}/` | Incomplete |

## Census completion criteria

A repository is not considered inventoried until:

1. Default branch and source commit are recorded.
2. Relevant folders and indexes are listed.
3. Ownership and license are classified.
4. Runtime-only and excluded paths are identified.
5. Every relevant source path has a proposed destination.
6. Snapshot status is explicit.
7. Duplicate and near-duplicate relationships are recorded.
8. Navigation and HTML-experience requirements are identified.

## Rearrangement rule

The census may change whenever a clearer hierarchy appears. Reclassification is expected. No source file is deleted merely because its canonical location changes.