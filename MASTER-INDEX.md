# Sky365 Knowledge Hub — Master Index

## Purpose

This file is the top-level navigation map for all Sky365 knowledge. It does not replace source indexes. It links them, preserves their provenance, and identifies the canonical destination for each topic.

## Governance and rearrangement control

These documents control the iterative migration, restructuring, and cross-session execution cycle:

- [Sky365 Evolving Mental Map](governance/SKY365-MENTAL-MAP.md) — the current hierarchy from purpose to pillars, capabilities, artifacts, sources, and experiences.
- [Master Repository Census](governance/MASTER-REPOSITORY-CENSUS.md) — the authoritative repository inventory, roles, source areas, and next discovery actions.
- [Migration Ledger](governance/MIGRATION-LEDGER.md) — the factual record of what was copied, adapted, redirected, validated, promoted, or remains source-only.
- [Master Task Ledger](governance/MASTER-TASK-LEDGER.md) — the canonical cross-session register for unfinished tasks, owners, evidence, blockers, and exact next actions.

Operating loop:

`Discover → Inventory → Snapshot → Classify → Adapt → Link → Validate → Promote → Rearrange → Repeat`

## Publication and retrieval defaults

- Every canonical topic, session, research issue, or visual experience must be linked from this `MASTER-INDEX.md`.
- HTML is a first-class approved documentation format for human review, not merely a disposable rendering. Markdown and structured JSON remain preferred machine-editable sources when available; the approved HTML experience must preserve the same claims, provenance, status, and links.
- New links are added only after the target page exists and is validated, so the master index does not publish broken destinations.
- Zvec is the default local vector engine for the current SKY365 retrieval prototype and evaluation track.
- Replacing Zvec requires evidence from a reproducible SKY365 benchmark covering retrieval quality, Arabic/English behavior, ingestion and query latency, memory and storage use, operational complexity, licensing, and ecosystem maturity. Public leaderboard speed alone is insufficient.

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

### SKY365 product architecture and Unified System Calendar

- [BP-PLATFORM-001 — SKY365 Meta-Driven Dual Modular Monolith](documents/07-blueprints/BP-PLATFORM-001-sky365-meta-driven-dual-modular-monolith.md)
- [ADR-PLATFORM-001 — Radzen by Default; Syncfusion Scheduler for Unified Calendar V1](documents/09-decisions/ADR-PLATFORM-001-radzen-default-syncfusion-calendar-v1.md)
- [Architecture Decisions — Visual Index](documents/09-decisions/index.html)

**Accepted direction:** SKY365 is a meta-driven enterprise ecosystem built around an Enterprise Modular Monolith and a Commerce Modular Monolith, connected through a governed API and integration fabric. Workflows create durable jobs, workers execute them, meaningful states produce notifications, and the Unified System Calendar provides filtered cross-module projections. Radzen remains the default UI library; licensed Syncfusion Scheduler is the justified exception for Calendar V1.

**Evidence rule:** this is an accepted target architecture, not proof of current implementation. Inspect code, runtime, database, authentication, jobs, workers, workflows, notifications, and integrations before migration.

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
- [Knowledge Dataset Schema](documents/07-blueprints/knowledge-dataset/DATASET-SCHEMA.md)
- [Knowledge Dataset Compiler Prompt Pack](documents/04-prompt-skill-engineering/PROMPT-KNOWLEDGE-DATASET-COMPILER.md)
- [Session Record — 2026-07-18](documents/09-decisions/session-records/2026-07-18-knowledge-dataset-compiler-session.md)

**Accepted pilot direction:** author structured semantic knowledge units in a reviewable dataset before embedding. Use Google Sheets for staging, Markdown and JSON as governed exports, and vector databases only as derived retrieval indexes. Begin with `ERP → Finance → General Ledger → Journal Voucher`.

### Zvec ecosystem and local intelligence research

- [Zvec Ecosystem — Research Source](documents/08-research/zvec-ecosystem/README.md)
- [Zvec Ecosystem — Simple HTML Edition](documents/08-research/zvec-ecosystem/simple.html)
- [Zvec Ecosystem — Visual Mind Map](documents/08-research/zvec-ecosystem/index.html)
- [Zvec Session Closure — Markdown](documents/08-research/zvec-ecosystem/sessions/2026-07-18-session-close.md)
- [Zvec Session Closure — Simple HTML Edition](documents/08-research/zvec-ecosystem/sessions/2026-07-18-session-close-simple.html)
- [Zvec Session Closure — Visual HTML Edition](documents/08-research/zvec-ecosystem/sessions/2026-07-18-session-close.html)

**HTML publication rule for this track:** each canonical Markdown document must have a lightweight, print-friendly HTML edition. A richer visual edition may also be added when it provides additional value.

**Current sequence:** Tiny LLM learning and Zvec Core inspection first; native .NET integration, Knowledge Engine, Dynamic Business Semantic Layer, and Memory next; MCP tools and Agent Skills later after the foundation is evaluated.

### SKY365 Unified Daily Sector Intelligence

- [Daily Intelligence — Current Operating Status (2026-07-21)](documents/08-research/daily-intelligence/CURRENT-OPERATING-STATUS-2026-07-21.md)
- [Unified Daily Sector Intelligence System](documents/08-research/daily-intelligence/DAILY-SECTOR-INTELLIGENCE-SYSTEM.md)
- [Sector A — Canada Immigration and PR](documents/08-research/daily-intelligence/sectors/SECTOR-A-CANADA-IMMIGRATION-PR.md)
- [Sector C — Skyverse Swarm and Connectors](documents/08-research/daily-intelligence/sectors/SECTOR-C-SKYVERSE-SWARM-CONNECTORS.md)
- [Sector D — B2B Sales and Growth](documents/08-research/daily-intelligence/sectors/SECTOR-D-B2B-SALES-GROWTH.md)
- [Sector E — Fundraising and Capital](documents/08-research/daily-intelligence/sectors/SECTOR-E-FUNDRAISING-CAPITAL.md)
- [Session Archive — Daily Intelligence, Concept Graph, Roadmap, B2B, and Skyverse (2026-07-21)](documents/09-decisions/session-records/2026-07-21-daily-intelligence-concept-roadmap-session.md)

**Accepted operating model:** one principal daily automation, fixed sectors, governed item lists, evidence and impact analysis, decisions and actions, one consolidated report, and one email or draft. New requests refine existing sector items rather than creating overlapping principal tasks. The Idea Pool preserves general, strategic, and Business Plan Changer ideas outside the current roadmap, while session records preserve exact restart points for unfinished stories.
