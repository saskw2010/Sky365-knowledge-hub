# Sky365 Knowledge Hub — Master Index

## Purpose

This file is the top-level navigation map for all Sky365 knowledge. It does not replace source indexes. It links them, preserves their provenance, and identifies the canonical destination for each topic.

## Global capability map

### Vision and platform strategy

- Sky365 platform vision
- Product universes
- Enterprise AI capability map
- From rules to agents
- Research-to-product operating model

### Agentic platform

- Shared Agent Runtime
- Shared Action Core
- Tool and MCP architecture
- Planning, execution, recovery, and verification
- Memory, RAG, semantic layer, and context engineering
- Trace store and flight recorder

### Safety and governance

- Agent security team
- Policy engine
- Approval gates
- DraftOnly execution
- Sandboxing
- Prompt injection and adversarial defense
- Tenant and secrets isolation
- Rollback and audit

### Multimodal intelligence

- Document intelligence and OCR
- Voice intelligence and voice editing
- Video planning and generation
- Avatar runtime
- Media asset management
- Multimodal knowledge ingestion

### Prompts and skills

- Prompt intelligence
- Prompt registry and compiler
- Skill packaging standard
- Semantic vocabulary
- Prompt evaluation and regression testing

### Agent training and evaluation

- Environments
- Trace datasets
- Verifiers
- Human feedback
- SFT
- RL
- Offline and production evaluation

### Domain platforms

- School
- ERP
- Odoo
- Healthcare and pharmacy
- Legal
- Real estate
- Fleet and rental
- Research and content studio

## Source indexes — preserved

The following indexes will be imported without deletion or destructive rewriting:

- `sources/Sky365Offers/`
- `sources/all-agentic-architectures/`
- `sources/sky365ERP/`
- `sources/sky365API/`

Each source folder must contain a source manifest and the original index files when available.

## Canonical promotion rule

A source document becomes canonical only after:

1. Its repository and original path are recorded.
2. Duplicate versions are compared.
3. Implementation claims are checked against code or runtime evidence.
4. Missing sections are merged.
5. Ownership is established.
6. Links are validated.
7. The canonical path is added to this index.

## Immediate migration order

1. Import `Sky365Offers/documents/` unchanged.
2. Import relevant Sky365-owned documentation from `all-agentic-architectures` while preserving upstream attribution.
3. Import documentation indexes from `sky365ERP` and `sky365API`.
4. Build duplicate and ownership maps.
5. Consolidate the master Sky365 Multimodal Agent Platform blueprint.
6. Consolidate security, voice, video, OCR, prompts, agent runtime, evaluation, and domain-platform documents.
7. Publish topic pages through the visual portal.
