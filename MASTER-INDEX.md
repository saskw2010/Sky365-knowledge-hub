# Sky365 Knowledge Hub — Master Index

## Purpose

This file is the top-level navigation map for all Sky365 knowledge. It does not replace source indexes. It links them, preserves their provenance, and identifies the canonical destination for each topic.

## Governance and rearrangement control

These three documents control the iterative migration and restructuring cycle:

- [Sky365 Evolving Mental Map](governance/SKY365-MENTAL-MAP.md) — the current hierarchy from purpose to pillars, capabilities, artifacts, sources, and experiences.
- [Master Repository Census](governance/MASTER-REPOSITORY-CENSUS.md) — the authoritative repository inventory, roles, source areas, and next discovery actions.
- [Migration Ledger](governance/MIGRATION-LEDGER.md) — the factual record of what was copied, adapted, redirected, validated, promoted, or remains source-only.

Operating loop:

`Discover → Inventory → Snapshot → Classify → Adapt → Link → Validate → Promote → Rearrange → Repeat`

## Global capability map

### Vision and platform strategy

- Sky365 platform vision
- Product universes
- Enterprise AI capability map
- From rules to agents
- Research-to-product operating model

### Agentic platform

- Shared Agent Runtime
- Shared Action Core
- Tool and MCP architecture
- Planning, execution, recovery, and verification
- Memory, RAG, semantic layer, and context engineering
- Trace store and flight recorder

### Safety and governance

- Agent security team
- Policy engine
- Approval gates
- DraftOnly execution
- Sandboxing
- Prompt injection and adversarial defense
- Tenant and secrets isolation
- Rollback and audit

### Multimodal intelligence

- Document intelligence and OCR
- Voice intelligence and voice editing
- Video planning and generation
- Avatar runtime
- Media asset management
- Multimodal knowledge ingestion

### Prompts and skills

- Prompt intelligence
- Prompt registry and compiler
- Skill packaging standard
- Semantic vocabulary
- Prompt evaluation and regression testing

### Agent training and evaluation

- Environments
- Trace datasets
- Verifiers
- Human feedback
- SFT
- RL
- Offline and production evaluation

### Domain platforms

- School
- ERP
- Odoo
- Healthcare and pharmacy
- Legal
- Real estate
- Fleet and rental
- Research and content studio

## Canonical documents

### Knowledge adaptation architecture

- [BP-AI-006 — Knowledge Adaptation Architecture](documents/07-blueprints/BP-AI-006-knowledge-adaptation-architecture.md)
- [ADR-AI-006 — Separate Knowledge, Tools, Behavior, and Safety](documents/09-decisions/ADR-AI-006-separate-knowledge-tools-behavior-and-safety.md)
- [RT-AI-011 — Domain Fine-Tuning Strategy](documents/08-research/RT-AI-011-domain-fine-tuning-strategy.md)
- [RT-AI-012 — RAG Evaluation Framework](documents/08-research/RT-AI-012-rag-evaluation-framework.md)
- [RM-AI-006 — Knowledge Adaptation Implementation Roadmap](documents/10-roadmaps/RM-AI-006-knowledge-adaptation-implementation.md)

**Accepted direction:** RAG for dynamic citable knowledge, typed tools for live operational data, skills and selective fine-tuning for behavior, and deterministic policies for safety.

### Knowledge Dataset Compiler

- [BP-AI-007 — SKY365 Knowledge Dataset Compiler](documents/07-blueprints/BP-AI-007-knowledge-dataset-compiler.md)
- [ADR-AI-007 — Adopt a Knowledge Dataset Compiler Before RAG Ingestion](documents/09-decisions/ADR-AI-007-adopt-knowledge-dataset-compiler.md)
- [Knowledge Dataset Schema](documents/04-prompt-skill-engineering/knowledge-dataset-schema.md)
- [Knowledge Dataset Compiler Prompt Pack](documents/04-prompt-skill-engineering/knowledge-dataset-compiler-prompts.md)
- [Session Record — 2026-07-18](docs/history/chat-archive/2026-07-18-knowledge-dataset-compiler-session.md)

**Accepted pilot direction:** author structured semantic knowledge units in a reviewable dataset before embedding. Use Google Sheets for staging, Markdown and JSON as governed exports, and vector databases only as derived retrieval indexes. Begin with `ERP → Finance → General Ledger → Journal Voucher`.

### Zvec ecosystem and local intelligence research

- [Zvec Ecosystem, Local LLM, and SKY365 Knowledge Engine — Research Source](documents/08-research/zvec-ecosystem/README.md)
- [Zvec Ecosystem, Local LLM, and SKY365 Knowledge Engine — Visual Mind Map](documents/08-research/zvec-ecosystem/index.html)

**Current sequence:** Tiny LLM learning and Zvec Core inspection first; native .NET integration, Knowledge Engine, Dynamic Business Semantic Layer, and Memory next; MCP tools and Agent Skills later after the foundation is evaluated.

### Session knowledge extracts

- [SESSION-TEMP — Developer Productivity Habits and Kimi K3 Deployment Reality](documents/archive/sessions/2026/07/SESSION-TEMP-developer-productivity-kimi-k3-analysis.md) — evidence-limited article review, developer delivery workflow, Kimi K3 deployment analysis, provider-routing ADRs, concept graph, and project backlog.

## Source indexes — preserved

The following indexes will be imported without deletion or destructive rewriting:

- `sources/Sky365Offers/`
- `sources/all-agentic-architectures/`
- `sources/sky365ERP/`
- `sources/sky365API/`

Each source folder must contain a source manifest and the original index files when available.

## Canonical promotion rule

A source document becomes canonical only after:

1. Its repository and original path are recorded.
2. Duplicate versions are compared.
3. Implementation claims are checked against code or runtime evidence.
4. Missing sections are merged.
5. Ownership is established.
6. Links are validated.
7. The canonical path is added to this index.

## Immediate migration order

1. Expand the repository census and pin source commits.
2. Import `Sky365Offers/documents/` unchanged.
3. Complete exact snapshots of Sky365-owned visual documentation from `all-agentic-architectures` while preserving upstream attribution.
4. Import documentation indexes from `sky365ERP` and `sky365API`.
5. Build duplicate, ownership, and implementation-evidence maps.
6. Rearrange domains and experience routes based on the accumulated census.
7. Consolidate the master Sky365 Multimodal Agent Platform blueprint.
8. Consolidate security, voice, video, OCR, prompts, agent runtime, evaluation, and domain-platform documents.
9. Publish topic pages through the visual portal.
10. Create separate Arabic and English editions only after the content structure becomes substantially stable.
