# Session Record — SKY365 Knowledge Dataset Compiler

## Session identity
- Session ID: `SESSION-TEMP`
- Date: 2026-07-18
- Primary project: SKY365 AI Knowledge Platform
- Related projects: SKY365 Agentic Platform, Mascot Agent, Enterprise RAG, Knowledge Hub
- Tags: RAG, knowledge compiler, dataset engineering, semantic authoring, metadata, Google Sheets, Markdown, embeddings

## Executive summary
The session moved the architecture away from conventional document-first RAG chunking toward a Knowledge Dataset Compiler. SKY365 agents will inspect internal and trusted external sources, design a hierarchical index, author intentional semantic knowledge units, validate provenance and product claims, and stage the result in Google Sheets before exporting to Markdown, JSON, SQL, vector databases, or a knowledge graph.

The critical distinction is that knowledge units are authored as chunks from the beginning rather than produced by arbitrarily splitting long documents. Each terminal index node normally becomes one 300–900 word unit with dedicated metadata columns.

## Major decisions
1. Google Sheets is the initial staging and QA surface.
2. Each row is one semantic knowledge unit.
3. Metadata is stored in dedicated columns.
4. A stable numeric hierarchy identifies system group, module, submodule, feature, and topic.
5. Markdown is an export and canonical readable format after review.
6. Vector databases are downstream retrieval indexes, not the source of truth.
7. External best practice and model-assisted research must not be represented as implemented SKY365 behavior without evidence.
8. The pilot scope is `ERP → Finance → General Ledger → Journal Voucher`.

## Concept graph

```text
Sources
  → Research Agent
  → Index Architect
  → Hierarchical Index
  → Knowledge Unit Author
  → Structured Dataset
  → QA and Provenance
  → Approved Knowledge Units
  → Markdown / JSON / SQL / Vector DB / Knowledge Graph
```

## Architecture records
- `BP-AI-007 — SKY365 Knowledge Dataset Compiler`
- `ADR-AI-007 — Adopt a Knowledge Dataset Compiler Before RAG Ingestion`

## Risks
- High initial research and review cost.
- Model-generated assertions may sound authoritative without evidence.
- Hierarchy changes can break identifiers if governance is weak.
- Oversized units can reduce retrieval precision.
- Excessive fragmentation can destroy context.
- External domain knowledge can be confused with current product capability.

## Immediate TODO
1. Create the Google Sheet with the approved schema.
2. Build the first Finance index.
3. Generate Journal Voucher pilot rows.
4. Add source provenance and evidence status.
5. Run QA and duplicate review.
6. Export approved rows to Markdown and JSONL.
7. Compare retrieval quality with fixed-size chunking.

## Backlog
- Semantic duplicate detection
- Knowledge-unit versioning
- Incremental regeneration
- Controlled vocabulary and ontology
- Automated glossary
- Knowledge graph generation
- Evaluation dataset and retrieval benchmarks
- Approval workflow and ownership model
- Change detection against code and runtime evidence

## Repository updates produced
- Blueprint
- Architecture decision record
- Dataset schema
- Reusable prompt pack
- Session record
- Master Index links

No raw transcript was fabricated or stored.