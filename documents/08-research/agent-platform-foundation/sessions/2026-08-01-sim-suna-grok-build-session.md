# Session Closure — Sky365 Agent Platform Foundation

**Status:** Draft for review  
**Date:** 2026-08-01  
**Canonical area:** `documents/08-research/agent-platform-foundation/`  
**Primary repository:** `saskw2010/Sky365-knowledge-hub`  
**Scope:** Consolidated architecture, decisions, open questions, research findings, and remaining work from the current Sky365 Agentic Platform discussion.

---

## 1. Executive Summary

This session investigated how Sky365 should evolve from an ERP enhanced by AI into a governed Agentic Enterprise Platform with native business semantics, deterministic execution, tool access, approvals, auditability, multi-agent coordination, and reusable visual workflow authoring.

The discussion started with Grok Build and clarified that its main value is not the Grok model itself but the open-source coding-agent harness: agent loop, context management, tools, shell, repository operations, plugins, skills, MCP, ACP, headless execution, and subagents. The decision was not to rewrite Grok Build in C# or make it the center of Sky365. It remains a reference and optional external coding worker.

The research then shifted to finding an open-source repository that matches Sky365 Agent itself rather than a coding agent. Several candidates were considered. The working conclusion is:

- **Sim** is the strongest current candidate for a code foundation because it provides a TypeScript-based visual Agent Studio, deterministic DAG workflow runtime, tools, MCP integration points, scheduling, execution state, pause/resume, logs, and human-in-the-loop patterns.
- **Suna** is the strongest behavioral reference for a digital workforce, task decomposition, company context, autonomous workers, deliverables, and long-running work, but its Python-centered architecture makes it less suitable as the primary embedded code foundation.
- **Grok Build** is a behavioral and architectural reference for coding-agent operations and can later be exposed as one execution worker behind Sky365.
- **Sky365 must retain ownership** of the semantic layer, metadata catalog, permissions, tenant isolation, deterministic business planner, named queries, approvals, audit, ERP actions, business policies, and authoritative data access.

The key architectural correction from this session is that increasing LLM autonomy does not necessarily improve system quality. In the current Sky365 work, deterministic flows can outperform the agentic flow when the semantic layer is weak. The preferred pattern is therefore:

> Semantic understanding → deterministic business plan → bounded agentic assistance → validation → approval → audited execution.

The next step is not to fork multiple repositories or start implementation immediately. The next step is a verified repository comparison using GitHub CLI or a local coding-agent session, followed by one adoption decision.

---

## 2. Strategic Goal

Build a Sky365-owned platform that can:

1. Understand natural-language business requests.
2. Resolve business entities, metrics, relationships, filters, periods, and actions through a governed semantic layer.
3. Route the request deterministically whenever an authoritative business flow exists.
4. Use agents only where exploration, planning, summarization, research, or generation adds value.
5. Connect to ERP controllers, databases, APIs, services, reports, workflows, and external tools through MCP and typed service contracts.
6. Pause for approval before sensitive writes.
7. Record every decision, tool call, validation result, approval, and execution outcome.
8. Support multiple specialist agents, supervisors, shared context, scheduling, and long-running jobs.
9. Provide a visual Agent Studio and workflow canvas inside the Sky365 product.
10. Keep the product code, behavior, and strategic control inside Sky365 rather than depending permanently on a third-party hosted platform.

---

## 3. Core Product Definition

Sky365 Agent is not a chatbot and not merely a workflow builder.

It is a governed digital workforce layer inside Sky365:

```text
User Request
  → Intent and Semantic Resolution
  → Permission and Policy Resolution
  → Deterministic Route Selection
  → Tool / Query / Workflow / Agent Execution
  → Validation
  → Human Approval where required
  → Business Action
  → Audit and Explanation
```

### Core responsibilities owned by Sky365

- Business semantic layer
- ERP metadata catalog
- Tenant and user context
- Role and permission resolution
- Named business queries
- Typed tools and MCP gateway
- Business actions and workflows
- Approval engine
- Audit trail
- Deterministic planner
- Model routing
- Agent registry
- Memory and context policy
- Evaluation and observability

---

## 4. Repository Findings

## 4.1 Sim

**Repository:** `simstudioai/sim`  
**License:** Apache 2.0  
**Primary stack:** TypeScript / Next.js-style monorepo architecture

### Verified strengths

- Visual workflow and agent authoring UI
- DAG-based execution runtime
- Execution queue and parallel work management
- Cancellation support
- Pause and resume
- Snapshot and execution-state serialization
- Block execution and node orchestration
- Logs and run metadata
- Human-in-the-loop management
- API routes for workflow execution
- Background workflow execution
- Tool catalog and generated tool schemas
- MCP-related workspace configuration
- Database schema in the monorepo

### Why it fits Sky365

Sim is close to the product surface Sky365 still needs:

- Agent Studio
- Workflow canvas
- Blocks
- Tool catalog
- Scheduling
- Run history
- Monitoring
- Human intervention
- Deployable workflow execution

### Main gaps

- No Sky365 business semantic layer
- No ERP metadata awareness
- No authoritative business query planner
- No native Sky365 tenant and permission model
- No Sky365 approval and audit contracts
- Agentic routing cannot be trusted as the sole business decision mechanism
- The flow engine must be integrated with Sky365 services rather than allowed direct unrestricted database access

### Working score

| Area | Score / 10 |
|---|---:|
| Agent Studio and Canvas | 9.0 |
| Workflow runtime | 8.5 |
| Execution state | 8.5 |
| Pause and resume | 8.5 |
| Monitoring and logs | 8.0 |
| MCP and tools | 8.0 |
| Background work | 8.0 |
| Human-in-the-loop | 7.5 |
| Semantic layer | 4.5 |
| ERP awareness | 2.0 |
| Integration potential | 7.5 |

**Preliminary product match:** approximately **7.8 / 10**.

### Current adoption position

Sim is the leading candidate for a **selective deep fork** if the remaining repository audit confirms that the canvas, runtime, database model, and integration boundaries can be maintained without excessive coupling to Sim-specific cloud services.

---

## 4.2 Suna

**Repository:** `kortix-ai/suna`  
**Primary stack:** Python backend and agent orchestration, TypeScript frontend, FastAPI, containerized execution and supporting services.

### Main value to Sky365

Suna is a stronger reference for digital-workforce behavior than for embedded product code.

Patterns to study:

- Supervisor and specialist agents
- Task decomposition
- Shared company context
- Long-running tasks
- Deliverable generation
- Sandbox or computer-use execution
- Worker status and progress presentation
- Thread and task organization
- Agent collaboration behavior

### Main limitations as primary foundation

- Python-centered backend adds another strategic runtime beside .NET
- Less aligned with deterministic ERP workflows
- Still lacks Sky365 business semantics and metadata
- Embedding the whole platform would increase operational complexity
- A large external agent platform could compete with, rather than support, the Sky365 native runtime

### Current adoption position

Use Suna as a **behavior and product-reference repository**. Extract patterns only after verified code inspection. Consider isolated Python services only if a component is independently valuable and has a stable contract.

---

## 4.3 Grok Build

**Repository:** `xai-org/grok-build`

### Correct framing

Grok Build is an open-source coding-agent harness, not an open-weight Grok model and not a business-agent platform.

### Relevant capabilities

- Agent loop
- Repository context handling
- File read/write and patching
- Shell and tests
- Plan mode
- Skills and plugins
- MCP
- ACP integration
- Headless CI usage
- Session continuation
- Context compaction
- Subagents

### Current adoption position

- Do not rewrite it in C#.
- Do not make it the Sky365 core.
- Keep it as a coding-worker candidate and architecture reference.
- Later expose it through a Sky365 worker contract alongside Codex, Claude Code, Cline, OpenHands, or local coding models.

---

## 5. Main Architecture Decision

### Selected direction

```text
Sim foundation
  + Sky365 native semantic and business core
  + Suna-inspired digital-workforce behavior
  + optional external coding workers such as Grok Build
```

### Meaning of this decision

- **Sim** may provide the visual studio, workflow runtime, scheduling, execution state, monitoring, MCP plumbing, and human-in-the-loop foundations.
- **Sky365** provides the authoritative semantic, ERP, security, governance, and business-execution layers.
- **Suna** provides patterns for how agents are organized, supervised, and presented as a digital workforce.
- **Grok Build** remains one possible coding execution worker, not the platform foundation.

---

## 6. Semantic Layer Problem

The current weakness identified by the user is critical:

> Recent agentic flow behavior can be worse than deterministic execution because the semantic layer and routing are not sufficiently authoritative.

### Root cause

The LLM is being asked to decide items that should be resolved by governed system metadata:

- Which business entity is intended
- Which metric definition is authoritative
- Which joins are allowed
- Which date grain and period apply
- Which tenant scope applies
- Which permissions are required
- Which query or workflow is approved
- Whether the request is read-only, draft, approval-required, or executable

### Correct design

```text
Natural-language request
  → Intent classification
  → Business vocabulary resolution
  → Entity and metric resolution
  → Relationship and filter resolution
  → Permission check
  → Deterministic route plan
  → Tool or named-query execution
  → Validation
  → LLM explanation or recommendation
```

### Principle

The LLM may propose meaning, but the system must confirm it against approved semantic definitions and policies.

---

## 7. Two Flow Types

## 7.1 Deterministic Business Flow

Use for authoritative operational processes:

```text
Trigger
  → Validate input
  → Resolve tenant and permission
  → Execute named query or business service
  → Apply business rules
  → Request approval if required
  → Execute action
  → Record audit
```

Examples:

- Create voucher draft
- Approve payment
- Close purchase order
- Publish dashboard
- Update customer status
- Run financial report

## 7.2 Agentic Work Flow

Use for tasks where the path is not fully predefined:

```text
Goal
  → Research
  → Plan
  → Decompose
  → Use bounded tools
  → Compare options
  → Produce deliverable
  → Validate
  → Request approval
```

Examples:

- Competitive research
- Architecture assessment
- Proposal generation
- Multi-document analysis
- Codebase investigation
- Long-form business planning

## 7.3 Combined pattern

```text
Agentic understanding
  → deterministic execution
  → agentic explanation
```

This combined pattern is the preferred Sky365 default.

---

## 8. Proposed Sky365 Layers

```text
Sky365 Agent Studio
  ├── Agent Designer
  ├── Workflow Canvas
  ├── Tool Catalog
  ├── Knowledge Sources
  ├── Run Monitor
  ├── Approval Inbox
  └── Workforce Dashboard

Sky365 Semantic Orchestrator
  ├── Intent Classifier
  ├── Business Vocabulary
  ├── Entity Resolver
  ├── Metric Resolver
  ├── Relationship Resolver
  ├── Context Graph
  └── Deterministic Route Planner

Sky365 Execution Layer
  ├── MCP Gateway
  ├── Named Queries
  ├── Database Read Models
  ├── ERP Controllers
  ├── APIs and Services
  ├── Business Workflows
  └── External Workers

Sky365 Governance Layer
  ├── Tenant Isolation
  ├── Authentication
  ├── Permissions
  ├── Approval Policies
  ├── Validation
  ├── Audit Trail
  └── Evaluation and Observability
```

---

## 9. MCP and Tool Strategy

Agents should not receive unrestricted database or shell access for business execution.

### Preferred tool pattern

```text
sky365.metadata.list_entities
sky365.metadata.describe_entity
sky365.semantic.resolve_term
sky365.semantic.resolve_metric
sky365.data.execute_named_query
sky365.data.search_records
sky365.workflow.create_draft
sky365.workflow.request_approval
sky365.workflow.execute_approved_action
sky365.audit.get_trace
```

### Avoid as default

```text
execute_sql
run_any_command
write_directly_to_database
```

### Rule

Every write path must be classified as one of:

- Prohibited
- Read-only
- Draft-only
- Approval-required
- Automatically executable under an explicit policy

---

## 10. Agent Workforce Model

Patterns to develop using Suna and other systems as references:

- Supervisor Agent
- Finance Agent
- Procurement Agent
- Sales Agent
- Customer Service Agent
- Data Analyst Agent
- Research Agent
- Security Reviewer
- Validator Agent
- Coding Agent

### Shared capabilities

- Shared task context
- Shared blackboard or context graph
- Agent-to-agent handoff
- Role-specific tools
- Bounded memory
- Progress and status events
- Deliverables
- Escalation to human
- Cancellation and resume

### Important warning

Adding more agents does not create value unless:

- Roles are explicit
- Context boundaries are defined
- Tool ownership is controlled
- Outputs are validated
- Conflicts are resolved
- A supervisor or deterministic workflow controls progression

---

## 11. UI and Technology Direction

The final user interface does not have to use the same framework as the upstream repository.

### Preferred Sky365 presentation model

- Blazor shell
- Vue 3 and TypeScript islands where useful
- SignalR or SSE for streaming execution events
- Monaco or another structured editor for code and definitions
- Visual workflow canvas
- Diff and approval panels
- Agent task board
- Semantic resolution panel
- Trace and audit viewer

### Event contract concept

```typescript
interface AgentEvent {
  sessionId: string
  taskId: string
  type:
    | 'message'
    | 'plan'
    | 'tool-started'
    | 'tool-completed'
    | 'semantic-resolution'
    | 'approval-required'
    | 'validation-result'
    | 'completed'
    | 'failed'
  timestamp: string
  payload: unknown
}
```

---

## 12. Repository and Fork Strategy

### Do not fork before assessment

A fork is an adoption decision, not a research starting point.

### Required assessment before fork

1. License and third-party notices
2. Monorepo structure
3. Runtime boundaries
4. Cloud-service dependencies
5. Database schema and migrations
6. Authentication and tenancy
7. Workflow serialization format
8. MCP and tool contracts
9. UI/runtime coupling
10. Test coverage
11. Upgrade and upstream-sync cost
12. Security and secret handling

### Working fork decision

If the verified Sim score remains above 7.5/10 and the runtime boundaries are maintainable:

- Create a fork under the user account.
- Preserve upstream remote.
- Create an untouched baseline branch.
- Create an integration foundation branch.
- Maintain a gap matrix and migration log.
- Avoid changing upstream core before defining Sky365 adapters.

---

## 13. Planned GitHub CLI Research Workflow

```powershell
mkdir E:\Sky365Research
cd E:\Sky365Research

gh repo clone simstudioai/sim
gh repo clone kortix-ai/suna
```

### Required output from the coding-agent session

- Architecture map
- Technology stack
- Workflow runtime anatomy
- Agent lifecycle
- Deterministic versus LLM-controlled routing
- Semantic and knowledge layers
- MCP and integration points
- Multi-agent coordination
- Long-running job behavior
- Pause, resume, cancellation
- Permissions, approvals, audit, tenancy
- Reusable components
- Components that must be replaced
- Adoption and integration score
- Final fork decision

### Rule

No code modification before the report is completed and reviewed.

---

## 14. Remaining Open Questions

### Sim

- Is the core workflow runtime cleanly reusable outside the current application shell?
- Which features are community code versus enterprise-only code?
- How dependent is the runtime on Sim-hosted services?
- Can the database schema be adapted to Sky365 tenancy?
- Can the workflow format be extended with semantic and policy nodes?
- Is MCP implemented as a full runtime integration or mostly configuration and UI?
- How mature are retries, idempotency, recovery, and distributed execution?
- What is the upstream update burden after a deep fork?

### Suna

- Which planning and task-decomposition components are modular?
- Is company context represented as a reusable service or tightly coupled to the platform?
- Which sandbox and deliverable-generation patterns can be extracted safely?
- How are long-running tasks resumed and observed?
- Which multi-agent patterns outperform a simpler deterministic supervisor?

### Sky365

- What is the canonical semantic registry schema?
- How will concepts, metrics, aliases, joins, policies, and tools be versioned?
- What is the boundary between the MCB/MCP server, semantic layer, and workflow engine?
- Which current deterministic flows already outperform the agentic implementation?
- Which business use case should become the first benchmark?
- What is the minimum viable approval and audit contract?
- How will Vue 3 islands coexist with the Blazor shell and current runtimes?

---

## 15. Priority Backlog

### P0 — Research and decision

- Clone and inspect Sim locally.
- Clone and inspect Suna locally.
- Produce the comparison report.
- Confirm or reject the 7.5/10 Sim match.
- Select one adoption mode: full fork, selective deep fork, runtime extraction, or reference only.

### P1 — Semantic correction

- Inventory the current Sky365 semantic layer.
- Compare agentic results against deterministic flows.
- Define canonical entity, metric, relation, filter, action, permission, and query contracts.
- Create a semantic resolution trace format.
- Define confidence thresholds and human review rules.

### P2 — Integration foundation

- Define Sky365 Agent Event contracts.
- Define MCP tool categories.
- Define named-query and business-action contracts.
- Define approval and audit entities.
- Define tenant and permission boundaries.
- Build a read-only integration prototype.

### P3 — Product experience

- Agent Studio shell
- Workflow canvas integration
- Semantic resolution panel
- Task and workforce dashboard
- Run monitor
- Approval inbox
- Audit trace viewer

### P4 — Workforce behavior

- Supervisor pattern
- Specialist agent definitions
- Shared context and handoff
- Long-running jobs
- Deliverable generation
- Evaluation against deterministic baselines

---

## 16. First Benchmark Use Case

A useful first business benchmark should include semantics, data retrieval, workflow, approval, and audit.

Suggested scenario:

> Create a ledger voucher draft from a natural-language request, resolve both accounts, amount, currency, dimensions, and narration, identify missing data, request clarification only when necessary, validate balancing and policy, save a draft, request human approval, execute after approval, and record the complete trace.

### Why this benchmark matters

It tests:

- Semantic resolution
- Deterministic planning
- ERP metadata
- MCP or service execution
- Missing-data detection
- Permission resolution
- Draft versus execute separation
- Human approval
- Audit trail
- Agent explanation

---

## 17. Accepted Principles

1. Sky365 owns business meaning.
2. The LLM does not define authoritative metrics or permissions.
3. Deterministic execution is preferred for business operations.
4. Agentic behavior is used where it adds value, not as a default replacement for rules.
5. Every sensitive action is draft-first or approval-gated.
6. Tools are typed and policy-scoped.
7. Live ERP facts come from authoritative services, not approximate memory.
8. The visual studio and runtime may be adopted from open source, but governance remains native.
9. Upstream repositories are inspected before they are forked.
10. One canonical document records the decision, gaps, and roadmap.

---

## 18. Current Decision Snapshot

| Decision | Current position |
|---|---|
| Primary code candidate | Sim |
| Estimated match | 7.8 / 10, pending full local audit |
| Preferred adoption mode | Selective deep fork, pending verification |
| Behavioral reference | Suna |
| Coding-agent reference | Grok Build |
| Semantic layer | Sky365 native |
| Business execution | Deterministic by default |
| Agentic execution | Bounded and validated |
| ERP integration | Typed services, MCP, named queries, controllers |
| Security | Tenant, permission, approval, audit owned by Sky365 |
| Immediate action | Local GitHub CLI comparison; no fork yet |

---

## 19. Definition of Done for This Research Track

The research phase is complete when:

- Sim and Suna have been cloned and inspected.
- A source-backed capability matrix exists.
- Sim receives a final verified match score.
- The semantic-layer gaps are documented.
- The first benchmark is selected.
- A fork decision is recorded.
- A 30-day implementation plan is approved.
- The Markdown and HTML versions of this document are linked from the knowledge hub index.

---

## 20. Final Direction

The platform direction is now intentionally narrow:

> Build Sky365 Agent using a reusable open-source visual workflow foundation only if it survives code-level assessment. Keep Sky365 semantics, metadata, business policies, execution, permissions, approvals, and audit native. Learn workforce behavior from Suna and coding-agent behavior from Grok Build without allowing either project to replace the Sky365 core.

The next action is the local repository assessment, not another broad search and not immediate implementation.
