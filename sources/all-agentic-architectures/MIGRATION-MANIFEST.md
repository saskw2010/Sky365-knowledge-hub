# all-agentic-architectures — Migration Manifest

## Migration objective

Bring all knowledge, documentation, indexes, visual learning assets, and Sky365-authored architecture material into the central Hub without deleting, flattening, or silently rewriting the source structure.

## Source-preserving import layout

```text
sources/all-agentic-architectures/
├── README.md
├── SOURCE-INVENTORY.md
├── MIGRATION-MANIFEST.md
├── repository-root/
├── portal/
├── academy/
├── learning-paths/
├── agentic-design-studio/
├── research/
├── sky365/
├── upstream-docs/
├── notebooks-index/
└── workflow-evidence/
```

## Transfer waves

### Wave 1 — Indexes and navigation

- Root `README.md`.
- Portal indexes.
- Academy indexes.
- Learning-path indexes.
- Strategy and research indexes.
- Agentic Design Studio indexes.
- Sky365 architecture indexes.
- Existing route maps.

Status: **Started**.

### Wave 2 — Sky365-owned Markdown and knowledge sources

- Academy lessons and source notes.
- Learning path descriptions.
- Strategy documents.
- Research-to-product decisions.
- Sky365 platform architecture maps.
- Shared Action Core and Flight Recorder material.
- Security, governance, memory, RAG, tools, MCP, evaluation, and observability content.
- Design Studio architecture and controlled design-to-code workflow.

Status: **Pending full file inventory**.

### Wave 3 — Visual applications

- `portal/`.
- `academy/` visual application.
- `learning-paths/` visual application.
- `agentic-design-studio/` visual application.
- Related CSS, JavaScript, images, and diagrams.

Treatment:

- Preserve original paths under the source snapshot.
- Do not make visual HTML the canonical source when Markdown exists.
- Link visual pages back to canonical Markdown after consolidation.

Status: **Pending**.

### Wave 4 — Upstream technical materials

- `agentic_architectures/` code references.
- `docs/` upstream technical documentation.
- `notebooks/`.
- Tests and examples where relevant to learning.

Treatment:

- Preserve original attribution and MIT license.
- Keep these in an explicitly upstream-owned area.
- Do not merge authorship with Sky365 documents.
- Canonical Sky365 documents may reference them as architecture evidence.

Status: **Pending**.

## Canonical extraction destinations

| Source topic | Canonical destination |
|---|---|
| Agent patterns and operating loops | `documents/01-agentic-platform/architecture-patterns/` |
| Shared runtime, actions, tools and orchestration | `documents/01-agentic-platform/` |
| Security, approvals and governance | `documents/02-safety-governance/` |
| Memory, RAG and knowledge architecture | `documents/01-agentic-platform/memory-knowledge/` |
| Prompts, context and skills | `documents/04-prompt-skill-engineering/` |
| Observability, traces and evaluation | `documents/05-agent-training/evaluation/` |
| Academy and learning paths | `documents/11-learning/` |
| Strategy and research | `documents/08-research/` |
| Adopt/Watch/Reject decisions | `documents/09-decisions/` |
| Product roadmaps | `documents/10-roadmaps/` |
| Design Studio | `documents/07-blueprints/agentic-design-studio/` |
| Sky365 architecture lab | `documents/00-vision/` and domain-specific sections |

## Required metadata for every imported file

```yaml
source_repository: saskw2010/all-agentic-architectures
source_path: original/path
source_commit: pending
ownership: sky365 | upstream | mixed | pending-review
artifact_type: index | markdown-source | visual-derivative | code | notebook | evidence
canonical_status: source-only | candidate | merged | canonical | archived
```

## Merge rule

No imported file is merged merely because its topic resembles another file.

A merge requires:

1. Content comparison.
2. Ownership verification.
3. Preservation of unique sections.
4. Link and image validation.
5. Decision record naming the canonical destination.
6. Retained source pointer.

## Completion criteria

The source migration is complete only when:

- Every source index is present and linked.
- Every knowledge-owned source file is inventoried.
- Upstream and Sky365 ownership remain distinguishable.
- Visual applications remain navigable or archived with working evidence.
- Canonical topic indexes reference every retained source.
- No duplicate is deleted before canonical comparison.
