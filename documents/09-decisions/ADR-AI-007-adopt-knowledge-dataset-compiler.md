# ADR-AI-007 — Adopt a Knowledge Dataset Compiler Before RAG Ingestion

## Status
Accepted for pilot.

## Context
Traditional RAG pipelines ingest finished documents, split them using fixed token windows, generate embeddings, and attempt to recover meaning during retrieval. This creates avoidable loss of context, arbitrary boundaries, duplicated text, weak provenance, and unsupported product claims.

SKY365 already has internal HTML, Markdown, PDFs, websites, reference material, code, schemas, and agents capable of understanding the system. It can therefore author a structured knowledge dataset directly rather than treating all sources as unstructured documents.

## Decision
SKY365 will build a Knowledge Dataset Compiler with these rules:

1. Google Sheets is the initial staging and review surface.
2. One row represents one semantic knowledge unit.
3. Each unit has a stable hierarchical identifier.
4. Content targets 300–900 words.
5. Metadata is stored in dedicated columns, not only inside content.
6. Markdown becomes a canonical export format after review.
7. Vector databases are downstream indexes, not the source of truth.
8. Internal implementation evidence and external best practice are explicitly distinguished.
9. A model may assist research and drafting but may not fabricate SKY365 capabilities.
10. QA, provenance, duplicate detection, and approval occur before embedding.

## Consequences
### Positive
- Better semantic coherence and retrieval precision.
- Human-reviewable dataset.
- Easier filtering by system group, module, feature, version, and status.
- Multi-format export.
- Incremental regeneration at knowledge-unit level.
- Improved provenance and governance.

### Negative
- Higher initial authoring and review cost.
- Requires schema governance and versioning.
- Requires agents for research, indexing, authoring, QA, and publishing.
- Model-generated knowledge must be verified.

## Rejected alternatives
### Fixed-size chunking as the primary method
Rejected because it creates arbitrary boundaries and weak semantic units.

### One Markdown file equals one chunk without limits
Rejected because large files can reduce retrieval precision and context focus.

### Vector database as the primary knowledge store
Rejected because embeddings are derived indexes and are unsuitable as the canonical editable dataset.

## Pilot scope
`ERP → Finance → General Ledger → Journal Voucher`