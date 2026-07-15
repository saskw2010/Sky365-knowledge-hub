# Sky365 Knowledge Hub — Master Mind Map

> The top-down navigation map for Sky365 architecture, engineering knowledge, research, learning, and implementation evidence.

## Whole-platform map

```mermaid
mindmap
  root((Sky365 Knowledge Hub))
    Vision and Strategy
      Platform vision
      Product universes
      Capability map
      Research decisions
      Roadmaps
    Agentic Platform
      Shared Agent Runtime
        Session and state
        Planner and executor
        Tool router
        Recovery and budgets
      Shared Action Core
        Action proposal
        Validation
        Authorization
        Approval
        Execution
        Verification
        Audit and rollback
      Semantic Layer
        Domain vocabulary
        Entity resolution
        Intent taxonomy
        Policy corpus
      Memory and Knowledge
        Working memory
        Episodic memory
        Semantic memory
        RAG
        Knowledge graph
    Safety and Governance
      Security team
      Prompt injection defense
      Tenant isolation
      Secrets and data boundaries
      Sandboxing
      Approval policies
      Adversarial testing
      Compliance evidence
    Prompt and Skill Engineering
      Prompt registry
      Prompt compiler
      Context engineering
      Skill packaging
      Versioning
      Regression tests
      Evaluation scenarios
    Multimodal Intelligence
      Document and OCR
        Intake
        Parsing router
        Layout and tables
        Verification
        Provenance
      Voice
        Speech to text
        Text to speech
        Voice editing
        Call agents
        Voice commands
      Video
        Research
        Script
        Storyboard
        Generation
        Editing
        Publishing
      Avatar
        Human interface
        Agent states
        Lip sync
        Approval experience
    Evaluation and Training
      Trace store
      Flight recorder
      Verifiers
      Benchmarks
      Human feedback
      Environments
      SFT
      RL
    Domain Platforms
      ERP
      Odoo
      School
        Curriculum graph
        Skill map
        Learner model
        Evidence of mastery
      Healthcare
      Legal
      Real estate
      Fleet and rental
    Learning and Research
      Agentic Systems Academy
      Learning paths
      Architecture patterns
      Research library
      Experiments
      Adopt Watch Reject
    Product and Implementation Evidence
      Sky365Offers
      sky365ERP
      sky365API
      Other repositories
      APIs and database
      Deployments
      ADRs
      Tests and runtime evidence
```

## Repository relationship map

```mermaid
flowchart TD
    HUB[Sky365-knowledge-hub\nCanonical knowledge source]
    AAA[all-agentic-architectures\nArchitecture library + Academy + Strategy]
    OFF[Sky365Offers\nProduct implementation]
    ERP[sky365ERP\nERP implementation]
    API[sky365API\nAPI implementation]

    AAA -->|Preserved source import| HUB
    OFF -->|Blueprints + cross-platform docs| HUB
    ERP -->|Architecture decisions + reusable knowledge| HUB
    API -->|Contracts + reusable standards| HUB

    HUB --> CAN[Canonical documents]
    HUB --> IDX[Master and source indexes]
    HUB --> VIS[Visual knowledge portal]
    HUB --> MAP[Migration and ownership maps]

    HUB -.->|Implementation evidence| OFF
    HUB -.->|Implementation evidence| ERP
    HUB -.->|Implementation evidence| API
```

## Canonical information flow

```text
Research or external idea
→ Verification
→ Capability classification
→ Existing implementation check
→ Reuse / Extend / Complete / Merge / Deprecate / Build
→ Blueprint or ADR
→ Repository implementation
→ Runtime evidence and tests
→ Canonical status update
→ Learning and visual documentation
```

## Anti-duplication rule

Before creating or moving any document:

1. Search all registered source repositories.
2. Identify every version and original index entry.
3. Preserve the source copy and provenance.
4. Select or merge a canonical version.
5. Update both the master index and the source index.
6. Link canonical claims to implementation evidence.

A new document is the final option, not the default action.
