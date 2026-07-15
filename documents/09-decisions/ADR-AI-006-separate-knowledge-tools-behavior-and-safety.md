# ADR-AI-006 — Separate Knowledge, Tools, Behavior, and Safety

**Status:** Accepted  
**Date:** 2026-07-15  
**Decision owner:** SKY365 Architecture  
**Blueprint:** `documents/07-blueprints/BP-AI-006-knowledge-adaptation-architecture.md`

## Context

SKY365 must answer from changing private knowledge, access live ERP data, execute controlled actions, and adapt to domain-specific behavior. A simplistic choice between RAG and fine-tuning cannot satisfy all of these requirements.

## Decision

SKY365 will implement four separate architectural concerns:

1. **RAG for dynamic, private, and citable document knowledge.**
2. **Typed tools and APIs for live operational data and actions.**
3. **Prompts, skills, schemas, examples, and selective fine-tuning for behavior.**
4. **Deterministic policies, permissions, approvals, and audit for safety.**

Fine-tuning of the primary model is deferred until repeated behavioral failures are demonstrated through evaluation.

## Rationale

- RAG updates knowledge without retraining.
- Tools preserve authoritative and current operational state.
- Skills and schemas are cheaper and easier to revise than model weights.
- Deterministic safety controls are enforceable and auditable.
- Failure classification prevents fine-tuning from masking retrieval or tool defects.

## Options Considered

### Option A — RAG for everything

Rejected. Live transactions and operational state require authoritative typed access, not approximate retrieval.

### Option B — Fine-tune the main model with company knowledge

Rejected as the default. Knowledge becomes stale, citations are weak, retraining is expensive, and safety remains probabilistic.

### Option C — One agent with unrestricted database access

Rejected. This creates unacceptable authorization, deletion, and audit risk.

### Option D — Layered architecture

Accepted. It separates failure domains and allows independent testing, replacement, and governance.

## Consequences

### Positive

- Better traceability and source grounding.
- Lower vendor lock-in.
- Safer operational execution.
- Easier model replacement.
- Clearer evaluation and debugging.
- Fine-tuning becomes evidence-driven.

### Costs

- More architectural components.
- Requires a Knowledge Gateway and tool registry.
- Requires trace taxonomy and evaluation datasets.
- Requires explicit policy engineering.

## Guardrails

- No destructive action may rely on model judgment alone.
- No live business fact should be answered from embeddings when an authoritative tool exists.
- No fine-tuning project starts without a baseline evaluation and failure taxonomy.
- Tenant and permission filters must execute before content reaches the model.
- Model outputs must be validated before tool execution.

## Revisit Triggers

Revisit this ADR if:

- A model demonstrates reliable native access to governed enterprise data under enforceable controls.
- Retrieval quality remains below target after chunking, metadata, hybrid search, and reranking improvements.
- A specialist fine-tuned model shows material quality, latency, or cost improvement on a representative benchmark.
- Regulatory or contractual requirements change the deployment model.
