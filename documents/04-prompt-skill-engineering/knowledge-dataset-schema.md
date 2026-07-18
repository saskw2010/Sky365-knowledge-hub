# SKY365 Knowledge Dataset Schema

## Purpose
Define the initial Google Sheets schema used by the Knowledge Dataset Compiler.

## Row rule
Each row is one semantic knowledge unit. The unit should normally contain 300–900 words and address one coherent topic or tightly related retrieval intent.

## Required columns

| Column | Purpose |
|---|---|
| `chunk_id` | Stable unique identifier, e.g. `SKY-ERP-FIN-GL-003.002.001` |
| `index_no` | Hierarchical number, e.g. `3.2.1.4` |
| `parent_index` | Parent node, e.g. `3.2.1` |
| `system_group` | Major platform group, e.g. `ERP` |
| `module` | Business or technical module, e.g. `Finance` |
| `submodule` | Submodule, e.g. `General Ledger` |
| `feature` | Feature or capability, e.g. `Journal Voucher` |
| `topic_title` | Human-readable unit title |
| `chunk_type` | `concept`, `workflow`, `rule`, `example`, `faq`, `troubleshooting`, `api`, `permission`, `recommendation` |
| `content` | Main 300–900 word semantic unit |
| `summary` | Concise unit summary |
| `retrieval_hints` | Natural-language queries and semantic phrases |
| `keywords` | Controlled and free-form keywords |
| `business_rules` | Relevant deterministic rules |
| `permissions` | Roles or permission requirements |
| `related_chunks` | Related `chunk_id` values |
| `source_type` | `internal_doc`, `code`, `runtime`, `global_reference`, `model_assisted`, or mixed |
| `source_reference` | Verifiable paths, URLs, repository refs, or document identifiers |
| `evidence_status` | `verified`, `partially_verified`, `unverified`, `recommended`, `planned` |
| `confidence_score` | Review confidence, not model probability |
| `status` | `draft`, `review`, `approved`, `deprecated`, `superseded` |
| `version` | Knowledge-unit version |
| `owner` | Responsible team or reviewer |
| `review_notes` | QA findings and required corrections |
| `created_at` | Creation timestamp |
| `updated_at` | Last update timestamp |
| `metadata_json` | Generated export representation of metadata |

## Validation rules
1. `chunk_id`, `index_no`, `system_group`, `module`, `topic_title`, `chunk_type`, `content`, `source_type`, `evidence_status`, and `status` are required.
2. `content` must not exceed 900 words without an explicit approved exception.
3. A row must not combine multiple unrelated retrieval intents.
4. Product implementation claims require internal evidence.
5. Global best practice must be labelled and must not be presented as existing SKY365 behavior.
6. Duplicate and near-duplicate units must be linked, merged, or marked as superseded.
7. Hierarchical IDs must remain stable after publication.

## Export mapping
- Google Sheets: human staging and review.
- Markdown: canonical readable knowledge documents.
- JSON/JSONL: agent and pipeline interchange.
- SQL: structured governance and reporting.
- Vector DB: derived retrieval index.
- Knowledge Graph: relationships between systems, modules, features, rules, sources, and units.