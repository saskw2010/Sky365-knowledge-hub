# BP-AI-007 — SKY365 Knowledge Dataset Compiler

## Status
Proposed architecture, accepted for pilot implementation.

## Purpose
Build enterprise knowledge as structured semantic units before embedding, rather than relying on post-hoc fixed-size document chunking.

## Core architecture

```text
Internal sources + trusted external references + model-assisted research
                              ↓
                     Research/Source Agent
                              ↓
                    Hierarchical Index Agent
                              ↓
                  Knowledge Unit Authoring Agent
                              ↓
                     Structured Staging Dataset
                              ↓
                    QA / Provenance / Approval
                              ↓
              Export: Markdown / JSON / SQL / Vector DB
```

## Primary design rule
A knowledge unit is authored intentionally around one coherent topic. It is not an arbitrary token window cut from a larger document.

## Staging format
Google Sheets is the initial human-reviewable staging surface. Each row represents one knowledge unit and each column represents metadata or content.

## Hierarchy
Use a stable numeric index:

```text
1
1.1
1.1.1
1.1.1.1
```

Terminal nodes become knowledge units. Example:

```text
3. Finance
3.2 General Ledger
3.2.1 Journal Voucher
3.2.1.1 Overview
3.2.1.2 Workflow
3.2.1.3 Validation Rules
3.2.1.4 Posting Rules
3.2.1.5 Examples and Edge Cases
```

## Knowledge unit size
- Target: 300–900 words.
- One coherent semantic topic per row.
- Split units that exceed the limit or mix distinct intents.
- Do not split merely to satisfy a token target if the result loses meaning.

## Source policy
A unit may synthesize:
- SKY365 HTML, Markdown, PDFs, websites, code, schemas, and runtime evidence.
- Trusted global references and established domain practices.
- Model knowledge used as a research aid, never as unverified product evidence.

External practice must not be described as an implemented SKY365 capability unless implementation evidence exists. Mark it as `global_reference`, `recommended`, `planned`, or `research` as appropriate.

## Required agents
1. Source Research Agent
2. Index Architect Agent
3. Index Reviewer Agent
4. Knowledge Author Agent
5. Metadata and Retrieval Agent
6. QA and Provenance Agent
7. Export and Publishing Agent

## Quality gates
- Topic coherence
- Completeness
- No unsupported implementation claims
- Source provenance
- Metadata completeness
- Duplicate detection
- Word-count compliance
- Stable hierarchy and identifiers
- Retrieval-hint quality
- Approval status

## Pilot
Start with:

`ERP → Finance → General Ledger → Journal Voucher`

Evaluate retrieval quality against conventional fixed-size document chunking before scaling.