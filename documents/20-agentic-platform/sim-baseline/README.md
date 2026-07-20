# SIM Behavioral Baseline for Sky365 Agentic

**Status:** Active baseline program  
**Created:** 2026-07-20  
**Reference repository:** `simstudioai/sim`  
**Pinned baseline commit:** `4ddad7495fc61b3fbc94f7c77cdcbc32ce05a7c3`  
**Pinned release message:** `v0.7.39: mcp oauth hardening, chat perf improvements`

## Purpose

SIM is the starting behavioral reference for raising **Sky365 Agentic** to functional parity before further architectural improvement.

This does not mean copying SIM's technology stack or accepting every design decision. It means extracting the observable behavior, turning that behavior into an evidence-backed specification, and proving that Sky365 Agentic can achieve equivalent or stronger behavior using the existing .NET, C#, Blazor, metadata-driven and governed-action architecture.

## Program flow

```text
SIM current implementation
        ↓
Extract actual behavior as-is
        ↓
Freeze SIM Behavioral Baseline V1
        ↓
Map current Sky365 Agentic behavior
        ↓
Build SIM ↔ Sky365 capability gap matrix
        ↓
Raise Sky365 Agentic to functional parity
        ↓
Run parity tests and identify weaknesses in both systems
        ↓
Multi-model review: Codex, GPT, Claude, Gemini, GLM and Kimi
        ↓
Consolidate criticism, evidence and disagreements
        ↓
Decide: Adopt / Improve / Replace / Reject / Defer
        ↓
Converge on one Sky365 Agent Runtime
        ↓
Expose it through Mascot, Studio, Skills, Jobs, Events and APIs
```

## First inspection boundary

The first inspection follows the runtime spine rather than the visual canvas:

```text
Workflow definition
→ persistence and versioning
→ execution request
→ runtime dispatcher
→ block/node execution
→ agent and tool invocation
→ state transition
→ logs and realtime progress
→ completion, failure, retry or suspension
```

## Initial evidence already fixed

| Evidence ID | Claim | Evidence | Status |
|---|---|---|---|
| SIM-E001 | The baseline is pinned to a specific commit, not moving `main` | Commit `4ddad7495fc61b3fbc94f7c77cdcbc32ce05a7c3` | Confirmed |
| SIM-E002 | The pinned release includes active MCP hardening and chat performance work | Commit message `v0.7.39: mcp oauth hardening, chat perf improvements` | Confirmed |
| SIM-E003 | MCP tool discovery is workspace-scoped and persisted | `apps/sim/app/api/mcp/servers/[id]/refresh/route` in the pinned commit | Confirmed by code |
| SIM-E004 | MCP discovery failure handling includes redaction and avoids returning reflected secrets | Tests introduced in the pinned commit | Confirmed by tests in code; runtime validation pending |
| SIM-E005 | Workflow tool schemas can be synchronized after MCP discovery | `syncToolSchemasToWorkflows(...)` in the refresh route | Confirmed by code |
| SIM-E006 | Successful discovery and secondary workflow-sync failure are treated separately | Guarded sync block in refresh route | Confirmed by code |

## Inspection tracks

### Track A — Workflow model

- Workflow identity, ownership and versioning
- Node/block schema
- Connections, branches and loops
- Inputs, outputs and variable resolution
- Save, publish, deploy and rollback behavior

### Track B — Execution runtime

- Execution entry points
- Dispatch and scheduling
- Block executors
- State transitions
- Retry, timeout, cancellation and failure propagation
- Long-running execution and continuation

### Track C — Agent behavior

- Prompt construction
- Provider/model routing
- Tool discovery and tool calling
- Iteration limits
- Structured outputs
- Conversation and memory behavior

### Track D — Tools and integrations

- Native blocks
- MCP servers and discovered tools
- Credentials and OAuth
- Schema synchronization
- Error isolation
- Side-effect and idempotency behavior

### Track E — Governance and operations

- Authentication and workspace boundaries
- Secret handling
- Audit and execution history
- Logs and realtime progress
- Deployment and self-hosting
- Runtime recovery after process/container restart

## Evidence policy

Every capability must be classified as one of:

- **Confirmed by code**
- **Confirmed by automated test**
- **Confirmed by runtime test**
- **Inferred**
- **Unverified**
- **Contradicted**

A UI element, class name or README statement is not sufficient proof that a runtime capability works end to end.

## Parity rule

Functional parity means equivalent externally observable behavior, not identical implementation technology.

| SIM behavior | Sky365 target equivalent |
|---|---|
| Workflow graph | Sky365 Workflow Definition |
| Block execution | C# node/action executor |
| Agent block | Sky365 Agent Runtime |
| Tool block | Shared Action Core / Tool Registry |
| Persistent run | Workflow and Job Instance |
| Pause/resume | Governed suspension and continuation |
| Human approval | Sky365 Approval Policy |
| Run trace | Audit plus execution timeline |
| Workspace boundary | Sky365 tenant boundary |
| Integration schema | Metadata-driven capability contract |

## Exit gate for baseline phase

The baseline phase is complete only when we have:

1. A repository and component map.
2. A complete list of execution entry points.
3. A workflow execution lifecycle.
4. A capability and node catalog.
5. An evidence register with file-level references.
6. A local runtime validation plan.
7. Acceptance tests reusable against Sky365.

## Published view

Open the visual page: [SIM Behavioral Baseline HTML](./index.html)

## Next action

Run the local Codex validation against the user's pulled copy of SIM, using the exact local path and this pinned commit as the reference. Codex must update evidence, not modify the product implementation, until the baseline report is approved.
