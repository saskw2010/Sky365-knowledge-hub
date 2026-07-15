# BP-AI-006 — Knowledge Adaptation Architecture

**Status:** Proposed  
**Date:** 2026-07-15  
**Domain:** AI Platform / Knowledge & Context  
**Related decision:** `documents/09-decisions/ADR-AI-006-separate-knowledge-tools-behavior-and-safety.md`

## 1. Problem

LLM applications commonly treat RAG and fine-tuning as competing choices. That framing is incomplete for SKY365 because the platform must handle four different concerns:

1. Dynamic and private knowledge.
2. Live operational data and actions.
3. Model behavior and task performance.
4. Deterministic safety and governance.

Using one mechanism for all four creates hallucination risk, stale data, weak controls, and unnecessary model training.

## 2. Architectural Principle

SKY365 shall separate knowledge retrieval, operational tool access, behavior adaptation, and safety enforcement.

```text
User Request
   ↓
Intent and Risk Analysis
   ↓
Knowledge Gateway
   ├── Document Knowledge → Hybrid RAG
   ├── Live Business Data → Typed Tools / APIs / SQL Read Models
   ├── Behavioral Guidance → Skills / Prompts / Schemas / Examples
   └── Safety Enforcement → Policy Engine / Approval / Audit
   ↓
Planner and Agent Runtime
   ↓
Validated Response or Controlled Action
```

## 3. Capability Layers

### 3.1 Knowledge Retrieval Layer

Use for policies, manuals, SOPs, contracts, product documentation, historical cases, and tenant knowledge.

Required capabilities:

- Hybrid keyword and vector retrieval.
- Metadata-aware filtering.
- Tenant isolation.
- Permission-aware retrieval.
- Version awareness.
- Source citations.
- Reranking.
- Retrieval evaluation.

### 3.2 Operational Data Access Layer

Use for invoices, stock, customers, attendance, orders, workflow state, and other live ERP/CRM data.

Required capabilities:

- Typed tool contracts.
- API and SQL read models.
- Semantic entity mapping.
- Parameter validation.
- Read/write separation.
- Transaction boundaries.
- Explicit authorization.

Operational data must not be reduced to approximate document retrieval when authoritative APIs or databases exist.

### 3.3 Behavior and Skills Layer

Use for response format, routing, extraction, classification, planning, and domain-specific execution patterns.

Adaptation order:

1. Prompt and system policy.
2. Structured output schema.
3. Few-shot examples.
4. Skill definitions and validators.
5. Specialist model or selective fine-tuning only after measurable repeated failure.

### 3.4 Deterministic Safety Layer

Safety must be enforced outside the probabilistic model.

Required controls:

- DraftOnly mode.
- Destructive-action detection.
- Approval gates.
- Permission checks.
- Audit log.
- Rollback strategy.
- Tool allowlists.
- Transaction limits.
- Policy-based denial.

Fine-tuning must never be considered a substitute for authorization, deletion protection, or approval workflows.

## 4. Failure Taxonomy

Every failed request should be classified before choosing a remedy:

| Failure class | Typical remedy |
|---|---|
| Missing source | Improve ingestion and coverage |
| Retrieval miss | Improve chunking, metadata, hybrid search, or reranking |
| Stale answer | Use versioned retrieval or live tools |
| Wrong tool | Improve intent routing and tool contracts |
| Invalid parameters | Add schemas and validation |
| Behavioral inconsistency | Improve skills, examples, or selective fine-tuning |
| Unsafe action | Strengthen policy and approval enforcement |
| Unsupported claim | Require grounding and citations |

## 5. Fine-Tuning Policy

Fine-tuning is allowed only when:

- The failure is behavioral rather than informational.
- The failure repeats across a representative evaluation set.
- Prompting, skills, schemas, and validation have been tested first.
- Expected quality, latency, or cost gains are measurable.
- Training data provenance and privacy are controlled.
- A rollback and model replacement path exists.

Preferred early fine-tuning targets are small specialist models for:

- Intent classification.
- Query rewriting.
- Entity mapping.
- Tool routing.
- Structured extraction.
- Domain reranking.

## 6. Technology Ownership

SKY365 does not need to train every foundation model from scratch. It must own the strategic control plane:

- Architecture.
- Domain schemas.
- Business rules.
- Skill definitions.
- Tool contracts.
- Knowledge corpus.
- Evaluation datasets.
- Safety policies.
- Orchestration.
- Vendor replacement capability.

## 7. Implementation Phases

### Phase 1 — Separation and Baseline

- Define the Knowledge Gateway contract.
- Separate RAG requests from live operational tool requests.
- Introduce a failure taxonomy in traces.
- Require citations for grounded knowledge answers.
- Require typed schemas for tools.

### Phase 2 — Retrieval Quality

- Add hybrid retrieval and reranking.
- Add permission and tenant filters.
- Establish retrieval and groundedness evaluations.
- Add version-aware ingestion.

### Phase 3 — Behavior Optimization

- Collect corrected traces.
- Identify repeated behavioral failures.
- Benchmark prompt/skill improvements against specialist fine-tuning.
- Fine-tune only when evidence supports it.

### Phase 4 — Continuous Improvement

- Production evaluation dashboards.
- Regression datasets.
- Model and retriever replacement tests.
- Periodic architecture review.

## 8. Acceptance Criteria

This blueprint is implemented when:

- The runtime can explicitly route between RAG, tools, and policy checks.
- Live ERP answers come from authoritative tools, not approximate embeddings.
- Knowledge answers include traceable sources.
- Destructive operations require deterministic approval.
- Failures are classified and measurable.
- Fine-tuning decisions are supported by evaluation evidence.
