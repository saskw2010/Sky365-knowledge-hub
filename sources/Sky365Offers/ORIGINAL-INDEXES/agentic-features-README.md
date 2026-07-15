# Agentic Features Documentation

> The official documentation section for all Sky365 / WytSky agentic AI capabilities.

This folder is the future home for every document related to AI agents, enterprise workflows, tool usage, memory, RAG, approvals, observability, evaluation, workers, add-ins, and human governance.

---

## Why this section exists

Sky365 should not treat agents as isolated chatbot experiments.

A production-grade agentic ERP needs a documented system of:

- Goals
- Tools
- Permissions
- Memory / RAG
- Guardrails
- Human approval
- Audit trails
- Evaluation
- Rollback and fallback
- Tenant-aware security
- Worker/add-in boundaries

The unspoken truth: an agent without governance is not a platform feature; it is an operational risk.

---

## Master Index

- [All Agentic Features](./ALL-AGENTIC-FEATURES.md)
- [00 — Overview](./00-overview/README.md)
- [01 — Core Architecture](./01-core-architecture/README.md)
- [02 — Agent Workbench](./02-agent-workbench/README.md)
- [03 — Observability](./03-observability/README.md)
- [04 — Human Governance](./04-human-governance/README.md)
- [05 — RAG & Memory](./05-rag-memory/README.md)
- [06 — Workflow Agents](./06-workflow-agents/README.md)
- [07 — Workers & Add-ins](./07-workers-addins/README.md)
- [08 — Blueprints](./08-blueprints/README.md)
- [Decisions](./decisions/adr-0001-agentic-documentation-structure.md)

---

## Documentation Standard

Every serious feature document should include:

```text
1. Purpose
2. Current State
3. Evidence from code/database/runtime
4. Target Behavior
5. Risks and Guardrails
6. Implementation Plan
7. Verification Checklist
8. Done Evidence
```

---

## Migration Note

The current blueprint file exists under `docs/blueprints/`.

Recommended future move:

```text
from:
docs/blueprints/from-rules-to-agents-ai-capability-stack.md

to:
docs/agentic-features/08-blueprints/from-rules-to-agents-ai-capability-stack.md
```

Before moving, check whether website links, scripts, or docs references already point to the old path.
