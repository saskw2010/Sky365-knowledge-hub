# Documentation Migration Map

## Rule

No source index is deleted. Every migration starts with an unchanged import and ends with a source pointer after canonical consolidation.

## Phase 1 — Inventory

| Source repository | Source path | Content type | Action |
|---|---|---|---|
| `saskw2010/Sky365Offers` | `documents/` | Sky365 documentation hub and agentic feature documentation | Import unchanged under `sources/Sky365Offers/documents/` |
| `saskw2010/Sky365Offers` | `docs/` | Legacy blueprints and implementation documentation | Inventory, classify, and import relevant shared material under `sources/Sky365Offers/docs/` |
| `saskw2010/all-agentic-architectures` | `README.md`, `academy/`, `learning-paths/`, `strategy/`, `agentic-design-studio/`, Sky365 visual assets | Sky365 knowledge extension plus upstream project context | Import Sky365-owned material with attribution; do not relabel upstream-owned files |
| `saskw2010/sky365ERP` | documentation locations pending discovery | ERP implementation and architecture | Inventory before import |
| `saskw2010/sky365API` | documentation locations pending discovery | API implementation and architecture | Inventory before import |

## Phase 2 — Source manifests

Each imported repository receives:

```text
sources/{repository}/SOURCE-MANIFEST.md
sources/{repository}/ORIGINAL-INDEXES/
```

The manifest records source commit, branch, import date, ownership, license, scope, and canonical status.

## Phase 3 — Duplicate review

Duplicate and near-duplicate documents are classified as:

- Same content, different path.
- Older/newer revision.
- Same title, different purpose.
- Strategic source versus implementation evidence.
- Sky365-owned versus upstream-owned.
- Markdown source versus visual HTML representation.

No automatic overwrite is allowed.

## Phase 4 — Canonical promotion

Reviewed content is promoted into:

```text
documents/
├── 00-vision/
├── 01-agentic-platform/
├── 02-safety-governance/
├── 03-multimodal/
├── 04-prompt-skill-engineering/
├── 05-agent-training/
├── 06-domain-platforms/
├── 07-blueprints/
├── 08-research/
├── 09-decisions/
├── 10-roadmaps/
├── visual-docs/
└── archive/
```

## First canonical consolidation target

```text
Sky365 Multimodal Agent Platform
├── Shared Agent Runtime
├── Shared Action Core
├── Security and Governance
├── Prompt Intelligence
├── Document Intelligence and OCR
├── Voice Intelligence
├── Video Intelligence
├── Avatar Runtime
├── Knowledge and Memory
├── Evaluation and Observability
└── Domain Packs
```

## Verification checklist

- Original index retained.
- Original repository and path recorded.
- Source commit recorded.
- Links checked.
- Duplicate versions compared.
- Ownership and attribution verified.
- Implementation claims classified as verified, partial, planned, or unknown.
- Canonical path added to `MASTER-INDEX.md`.
- Old repository receives a non-destructive pointer only after verification.
