# RT-AI-012 — RAG Evaluation Framework

**Status:** Active research  
**Date opened:** 2026-07-15  
**Domain:** AI Platform / Knowledge & Context

## Research Question

How should SKY365 measure whether a weak answer is caused by ingestion, retrieval, reranking, grounding, generation, permissions, or missing operational tools?

## Why It Matters

Without a failure taxonomy and evaluation set, teams may incorrectly respond to poor answers by changing the model or starting fine-tuning. That can increase confidence without improving factual correctness.

## Evaluation Dimensions

- Source coverage.
- Retrieval recall.
- Retrieval precision.
- Reranker quality.
- Context relevance.
- Groundedness.
- Answer correctness.
- Citation correctness.
- Completeness.
- Permission compliance.
- Tenant isolation.
- Latency and cost.

## Required Dataset

Create a representative benchmark containing:

- Direct factual questions.
- Multi-document questions.
- Conflicting-version questions.
- Questions requiring permission filtering.
- Questions that must route to ERP tools instead of RAG.
- Unanswerable questions.
- Adversarial prompt-injection cases.
- Domain terminology and synonym cases.

Each case should record:

- Expected route.
- Expected sources or tool.
- Required facts.
- Forbidden claims.
- User and tenant permissions.
- Maximum acceptable latency.

## Experiments

1. Vector-only vs keyword-only vs hybrid retrieval.
2. Chunk-size and overlap comparison.
3. Metadata filtering strategies.
4. Reranker comparison.
5. Query rewriting impact.
6. Citation enforcement impact.
7. Version-aware retrieval.
8. Permission-filter failure testing.

## Decision Gate

The framework is ready for adoption when it can distinguish retrieval failures from generation failures and produce a regression score for each release.

## Outputs

- Golden evaluation dataset.
- Automated retrieval metrics.
- Grounded-answer evaluator.
- Failure taxonomy dashboard.
- Release regression threshold.
