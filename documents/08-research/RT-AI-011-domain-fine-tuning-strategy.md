# RT-AI-011 — Domain Fine-Tuning Strategy

**Status:** Active research  
**Date opened:** 2026-07-15  
**Domain:** AI Platform / Agent Training and Evaluation

## Research Question

Where can selective fine-tuning create measurable value for SKY365 without encoding volatile business knowledge or weakening governance?

## Working Hypothesis

Fine-tuning should target narrow, repeatable behavioral tasks after prompts, skills, schemas, and retrieval have been optimized. Early candidates are smaller specialist models rather than the primary reasoning model.

## Candidate Tasks

- Intent classification.
- Query rewriting.
- Entity and field mapping.
- Tool routing.
- Structured extraction.
- Domain terminology normalization.
- Reranking.
- Repetitive document transformation.

## Excluded Uses

- Frequently changing policies or catalog data.
- Current ERP state.
- Authorization and safety enforcement.
- Destructive-action protection.
- Knowledge that requires citations and version tracking.

## Evidence Required

A fine-tuning proposal must include:

- Representative benchmark dataset.
- Baseline model and prompt/skill results.
- Repeated failure pattern.
- Training-data provenance.
- Privacy review.
- Quality improvement target.
- Cost and latency comparison.
- Deployment and rollback plan.
- Vendor replacement strategy.

## Experiments

1. Prompt-only baseline.
2. Prompt plus few-shot examples.
3. Skill and schema constrained baseline.
4. Small fine-tuned specialist model.
5. Large general model comparison.
6. Cross-domain generalization test.
7. Drift and regression test.

## Decision Gate

Proceed only if fine-tuning provides a material, repeatable improvement over the strongest non-training baseline and does not create unacceptable maintenance or lock-in cost.
