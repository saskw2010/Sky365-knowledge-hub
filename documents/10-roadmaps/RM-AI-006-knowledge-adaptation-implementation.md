# RM-AI-006 — Knowledge Adaptation Implementation Roadmap

**Status:** Proposed  
**Date:** 2026-07-15  
**Blueprint:** `documents/07-blueprints/BP-AI-006-knowledge-adaptation-architecture.md`  
**Decision:** `documents/09-decisions/ADR-AI-006-separate-knowledge-tools-behavior-and-safety.md`

## Objective

Implement a measurable SKY365 architecture that routes requests to document knowledge, authoritative operational tools, behavioral skills, and deterministic safety controls.

## Workstream 1 — Current-State Inspection

Before implementation:

- Inspect existing RAG, vector database, semantic layer, tool registry, policy engine, and trace storage.
- Map implemented components to the target blueprint.
- Mark each capability as present, partial, missing, duplicated, or unsafe.
- Collect runtime evidence rather than relying only on documentation.

**Deliverable:** Current-state gap report.

## Workstream 2 — Knowledge Gateway

- Define request classification contract.
- Define routes: `DocumentKnowledge`, `OperationalRead`, `OperationalWrite`, `GeneralReasoning`, `Denied`.
- Add confidence and evidence requirements.
- Add tenant, user, and permission context.
- Prevent direct execution from unvalidated model output.

**Deliverable:** Knowledge Gateway interface and routing tests.

## Workstream 3 — RAG Quality Baseline

- Inventory knowledge sources.
- Establish version and provenance metadata.
- Benchmark current retrieval.
- Add hybrid retrieval and reranking where missing.
- Require citations for grounded answers.

**Deliverable:** Initial RAG benchmark using RT-AI-012.

## Workstream 4 — Operational Tool Separation

- Inventory ERP/CRM/Odoo actions and reads.
- Convert access into typed tool contracts.
- Separate read and write permissions.
- Add validation, idempotency, audit, and transaction limits.
- Route live-state questions away from document RAG.

**Deliverable:** Governed tool registry and authoritative data routes.

## Workstream 5 — Safety Enforcement

- Enforce DraftOnly by default for consequential actions.
- Block destructive actions unless policy and approval requirements pass.
- Add explicit approval artifacts.
- Add audit traces and rollback metadata.
- Test prompt-injection and privilege escalation cases.

**Deliverable:** Policy enforcement test suite.

## Workstream 6 — Behavior Optimization

- Create representative task datasets.
- Compare prompts, schemas, skills, and examples.
- Record repeated behavioral failures.
- Evaluate small specialist models for routing and extraction.
- Start fine-tuning only after a documented decision gate.

**Deliverable:** Fine-tuning readiness report.

## Initial Backlog

1. Inspect existing SKY365 Knowledge Gateway equivalents.
2. Inspect current vector DB and ingestion pipeline.
3. Inspect existing semantic vocabulary and entity mapping.
4. Inspect tool registry and Odoo/ERP access patterns.
5. Inspect DraftOnly, deletion protection, and approval logic.
6. Define trace failure taxonomy.
7. Build 30–50 golden evaluation cases.
8. Produce architecture gap matrix.

## Definition of Done

- Every request route is observable in traces.
- Authoritative operational facts come from tools.
- Document answers are source-grounded.
- Unsafe actions are blocked deterministically.
- Evaluation failures identify the defective layer.
- Any fine-tuning proposal includes benchmark evidence and rollback criteria.
