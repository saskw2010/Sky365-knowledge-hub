# SKY365 Knowledge Dataset Schema

## Purpose
Define the staging schema used to author, review, govern, and export semantic knowledge units before RAG ingestion.

## Record model
One row represents one semantic knowledge unit. A row must describe one coherent retrievable topic and must not mix unrelated intents.

## Required columns

| Column | Purpose |
|---|---|
| `chunk_id` | Stable unique identifier, e.g. `SKY-ERP-FIN-GL-003.002.001.001` |
| `index_no` | Hierarchical index such as `3.2.1.1` |
| `system_group` | Top-level product or platform family |
| `module` | Major module such as Finance |
| `submodule` | Submodule such as General Ledger |
| `feature` | Feature or business capability such as Journal Voucher |
| `topic_title` | Human-readable terminal-node title |
| `chunk_type` | concept, workflow, rule, permission, example, troubleshooting, API, research, recommendation |
| `content` | Main semantic unit; target 300–900 words |
| `summary` | Compact factual abstract |
| `retrieval_hints` | Natural-language queries and synonymous phrases |
| `keywords` | Controlled keywords and domain terminology |
| `business_rules` | Explicit deterministic rules, if applicable |
| `permissions` | Relevant roles, scopes, or approval requirements |
| `related_chunks` | Related stable chunk identifiers |
| `source_type` | internal_doc, code, runtime, website, global_reference, model_assisted |
| `source_reference` | Verifiable source path, URL reference, commit, page, or evidence pointer |
| `implementation_state` | implemented, partial, planned, recommended, global_reference, research |
| `confidence_score` | Review confidence from 0.00 to 1.00 |
| `status` | draft, reviewed, approved, rejected, deprecated |
| `review_notes` | Human or QA-agent findings |
| `version` | Knowledge-unit version |
| `language` | Content language |
| `updated_at` | Last controlled update timestamp |

## Optional machine-export columns

- `metadata_json`
- `content_hash`
- `source_hash`
- `embedding_status`
- `embedding_model`
- `vector_record_id`
- `duplicate_of`
- `supersedes`
- `superseded_by`

## Content rules

1. Target 300–900 words for `content`.
2. Split a row when it contains multiple independent retrieval intents.
3. Do not split a coherent topic only to satisfy an arbitrary token count.
4. Keep metadata outside the main content where possible.
5. Never describe a global best practice as an implemented SKY365 feature without evidence.
6. Use explicit labels for planned, recommended, research, and global-reference material.
7. Every approved row must have provenance and an implementation state.

## Hierarchy rules

```text
1 System Group
1.1 Module
1.1.1 Submodule or Feature
1.1.1.1 Terminal Knowledge Unit
```

Identifiers remain stable after publication. Renaming a title must not silently change the identifier.

## Pilot example

```text
3 ERP
3.2 Finance
3.2.1 General Ledger
3.2.1.1 Journal Voucher Overview
3.2.1.2 Journal Voucher Workflow
3.2.1.3 Journal Voucher Validation Rules
3.2.1.4 Journal Voucher Posting Rules
3.2.1.5 Journal Voucher Examples and Edge Cases
```

## Export targets

The approved dataset may be exported to:

- Markdown knowledge units
- JSON or JSONL
- SQL tables
- Search indexes
- Vector databases
- Knowledge graphs

Google Sheets is a staging and review surface, not the final runtime dependency.