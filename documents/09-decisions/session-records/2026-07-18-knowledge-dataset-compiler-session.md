# Session Record — Knowledge Dataset Compiler

## Session Identity
- Session ID: `SESSION-TEMP`
- Date: 2026-07-18
- Primary project: SKY365 AI Knowledge Platform
- Related projects: SKY365 Knowledge Hub, Enterprise RAG, Mascot Agent, Agentic Platform
- Tags: RAG, knowledge dataset, semantic authoring, Google Sheets, metadata, hierarchy, provenance

## Executive Summary
The session moved SKY365 away from treating chunking as a late document-processing step. The accepted pilot direction is to compile enterprise knowledge into intentionally authored semantic units before embedding.

The system will synthesize internal HTML, Markdown, PDFs, websites, code, schemas, runtime evidence, trusted global references, and model-assisted research. It will first construct a detailed hierarchical index, then author one coherent knowledge unit for each terminal node, stage the records in Google Sheets, perform QA and provenance review, and export approved records to Markdown, JSON, SQL, vector databases, and knowledge graphs.

## Major Decisions
1. Adopt the term **Knowledge Dataset Compiler**.
2. Use Google Sheets as the initial staging and human-review surface.
3. Treat one row as one semantic knowledge unit.
4. Use stable hierarchical numbering such as `3.2.1.4`.
5. Target 300–900 words for the main content of a unit.
6. Store metadata in dedicated columns.
7. Treat Markdown as an approved export and canonical publishing format, not necessarily the first authoring surface.
8. Treat vector databases as downstream indexes, not the editable source of truth.
9. Distinguish internal implementation evidence from global references and recommendations.
10. Pilot the design on `ERP → Finance → General Ledger → Journal Voucher`.

## Concept Graph

```text
Internal Sources ─┐
Global References ├─> Source Research Agent
Model Assistance ─┘            │
                               v
                    Hierarchical Index Agent
                               │
                               v
                    Knowledge Unit Author
                               │
                               v
                    Structured Sheet Dataset
                               │
                               v
                    QA + Provenance + Approval
                               │
             ┌─────────────────┼─────────────────┐
             v                 v                 v
          Markdown          JSON/SQL        Vector/Graph Indexes
```

## Risks
- Model-generated content may misrepresent global practice as implemented SKY365 behavior.
- Excessively large units may preserve context but reduce retrieval precision.
- Excessively small units may destroy semantic completeness.
- A highly detailed index may create duplication without an index-review stage.
- Source provenance and implementation evidence may be incomplete.
- Google Sheets is suitable for staging but should not become the runtime system of record.

## Immediate TODO
- Create the pilot index for Journal Voucher.
- Create a Google Sheet using the dataset schema.
- Run Index Architect and Index Reviewer prompts.
- Generate initial Journal Voucher units.
- Review implementation claims against SKY365 ERP evidence.
- Compare retrieval results with conventional fixed-size chunking.

## Future Work
- Duplicate and semantic-overlap detection.
- Versioning and semantic diffing.
- Automatic Markdown/JSONL export.
- Incremental embedding updates.
- Knowledge graph relationship generation.
- Controlled vocabulary and ontology management.
- Approval workflow and ownership rules.

## Repository Changes Produced
- `documents/07-blueprints/BP-AI-007-knowledge-dataset-compiler.md`
- `documents/09-decisions/ADR-AI-007-adopt-knowledge-dataset-compiler.md`
- `documents/07-blueprints/knowledge-dataset/DATASET-SCHEMA.md`
- `documents/04-prompt-skill-engineering/PROMPT-KNOWLEDGE-DATASET-COMPILER.md`
- This session record

## Publish State
Architecture and prompts are published for pilot use. No production dataset, Google Sheet, embeddings, or Journal Voucher knowledge records were created during this session.