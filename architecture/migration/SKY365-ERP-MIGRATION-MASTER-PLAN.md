# Sky365 ERP Migration Master Plan

Status: Canonical Draft  
Date: 2026-07-27  
Purpose: Authoritative starting contract for Codex discovery, gap analysis, roadmap preparation, and later implementation.  
Scope: Migrate legacy Code On Time ERP metadata into the Sky365 canonical metadata platform without breaking the current runtime or exposing one client's systems to another.

## 1. Core Decision

This migration is not an XML-to-JSON file conversion.

The target is a canonical enterprise meta-model in which each Code On Time capability has a defined Sky365 equivalent. One governed definition must drive runtime UI, data access, navigation, security, AI agents, MCP, semantic knowledge, OKF, vector retrieval, and audit.

The canonical flow is:

```text
Legacy Code On Time evidence
  -> discovery and classification
  -> canonical database registry
  -> canonical controller JSON
  -> compiled shared runtime model
  -> governed projections for UI/API/AI/MCP/OKF/Vector
```

Database registries are the authoritative catalog for systems, modules, ownership, activation, and placement. Filesystem JSON and folders are generated/local authoring projections according to the existing runtime conventions. Codex must inspect the current implementation before declaring which existing store is authoritative for each artifact.

## 2. Two Primary Migration Tracks

### Track A — System Discovery and Migration

Responsibilities:

1. Inspect a supplied legacy ERP root without modifying it.
2. Discover how many real systems exist even when folders do not align with system boundaries.
3. Classify the source platform/domain, such as Sky365, Code On Time, Odoo, an external product, or a client-specific solution.
4. Classify discovered capabilities into:
   - shared Business Core;
   - industry-specific Operational Solutions;
   - shared Platform Services;
   - Extensions and Integrations.
5. Resolve the canonical hierarchy:

```text
Domain classification
  -> System Group
    -> Module
      -> Controller / Screen / Runtime Asset
```

6. Update the platform schema and database registries.
7. Update the modules list and system-group catalogs.
8. Generate missing system-group/module folders and required subfolders using canonical placement rules.
9. Generate navigation nodes, URLs, start pages, cards, ordering, visibility, and activation metadata.
10. Preserve provenance from the legacy source.
11. Produce unresolved-classification records instead of guessing.

The Domain is primarily a classification dimension unless current code proves a dedicated domain registry exists. Codex must inspect whether the System Groups table already carries Domain/DomainType and global activation fields.

### Track B — Controller Migration and Evolution

Responsibilities:

1. Accept a legacy Code On Time XML controller, including a controller supplied independently after the system/domain already exists.
2. Resolve its Domain, System Group, Module, and canonical destination from registry evidence—not from filename guessing.
3. Parse and preserve:
   - source objects and SQL statement evidence;
   - fields and types;
   - views/forms/grids;
   - keys and identity metadata;
   - relationships and lookups;
   - actions and action groups;
   - filters and calculated fields;
   - business-rule handlers;
   - roles, permissions, visibility, and row restrictions;
   - lifecycle and workflow clues.
4. Map each legacy capability to a canonical Sky365 equivalent.
5. Generate or update canonical controller JSON.
6. enrich it with semantic, knowledge, AI capability, MCP, policy, and audit definitions.
7. register it in the database and export it to its canonical filesystem location.
8. validate legacy parity and target runtime behavior.
9. mark it Migrated only after the Definition of Done is satisfied.

If placement is ambiguous, record `UnresolvedClassification` and stop only for that decision.

## 3. Canonical Placement Rule

A controller's path must be resolved through stable identifiers:

- `DomainClassification`
- `SystemGroupId`
- `ModuleId`
- `ControllerId`

Names, labels, URLs, cards, and folder names are mutable presentation/projection properties and must not be used as authoritative identity.

Expected logical placement:

```text
<system-group>/
  <module>/
    Schemas/
      <controller>.controller.json
      <controller>.dynamic.json
```

Codex must first inspect the actual active conventions and generators. Generated/unified catalogs must not be manually edited when the current repository already treats them as outputs.

## 4. Tenant Isolation and Activation

Global `IsActive` or `IsVisible` is insufficient for client-specific activation.

Required effective access is conceptually:

```text
Global System Group Active
AND Tenant System Group Active
AND Global Module Active
AND Tenant Module Active
AND Domain Rule
AND System Group Rule
AND Module Rule
AND Controller/Action Permission
```

Codex must inspect for existing equivalents of:

- System Group domain classification;
- global activation;
- tenant-to-system-group assignment;
- tenant-to-module assignment;
- effective visibility and authorization evaluation.

If tenant assignment tables/services are missing, report this as a critical isolation gap. Never expose another client's operational solution through navigation, direct routes, API, agent tools, search, or cached metadata.

## 5. Code On Time Equivalence Contract

Every used legacy capability must receive one migration disposition:

- `DirectMap`
- `Transform`
- `CompatibilityAdapter`
- `Redesign`
- `Retire`

Unmapped capabilities block completion and must not be silently dropped.

Minimum equivalence areas:

| Legacy concept | Canonical concern |
|---|---|
| dataController | Controller identity and data contract |
| fields | Field schema |
| grid/edit/create views | Screen and view definitions |
| itemsDataController/value/text | Lookup and relationship contract |
| filterExpression | Query/data policy |
| actions/action groups | Command/action contract |
| business-rule handlers | Rules/compatibility handlers |
| roles/visibility | Policy and authorization |
| controller links | Relationships and hypermedia links |
| navigation/site map | Menu/navigation registry |
| report/workflow metadata | Dedicated report/workflow runtimes |

Functional parity must precede modernization.

## 6. Data Source, Keys, Identity, and Write Capability

Discovery must inspect every table and view and classify:

- identity column;
- primary key;
- unique key;
- composite key;
- sequence/generated key;
- manual/incremental key;
- no reliable key;
- writable table;
- read-only view/query;
- view with an explicit write strategy.

Identity is important but is not equivalent to a primary key or editability. A table without Identity may be editable through a natural or composite key. A source with Identity may still be read-only.

The canonical definition must separate:

```text
ObjectType
KeyDefinition
KeyGenerationStrategy
WriteTarget
WriteStrategy
Capabilities: Read/Create/Update/Delete
Permissions and approval rules
```

Supported conceptual key strategies include:

- `Identity`
- `Sequence`
- `Guid`
- `Manual`
- `Composite`
- `Computed`
- `ProviderNative`
- `None`

The engine may expose New/Edit/Delete only after evaluating source type, reliable key, write target/strategy, explicit capabilities, permissions, and policy.

Discovery reports must identify all sources with Identity, without Identity, with non-Identity keys, with composite keys, and without reliable keys.

## 7. Query Composition Direction

Target canonical controllers should describe queries structurally:

- schema-qualified base/write table;
- fields;
- relations and join semantics;
- filters;
- sort/group definitions;
- source roles such as `writeTarget`, `lookup`, `detail`, `join`, and `readOnly`.

The engine should generate provider-specific SQL from this model.

Raw SQL remains a governed compatibility mode for legacy or irreducibly complex sources:

- `generated`
- `legacySql`
- `view`
- `storedProcedure`

Do not assume every non-base table is a lookup; it may be detail, bridge, join, or read-only enrichment.

Report/query composition should use semantic relations, select valid join paths, apply tenant/security policies automatically, and qualify or alias same-named fields rather than silently discarding fields with different meanings.

## 8. Shared Runtime and Projections

Canonical source JSON must be validated and compiled once into a shared Controller Runtime Model. UI, API, workflow, policy, AI, semantic, BI, and MCP consumers must not independently reinterpret raw JSON.

Publishing a controller should produce governed projections:

1. runtime cache/model;
2. API/OpenAPI contract;
3. Agent Capability Manifest;
4. MCP resources/tools/prompts;
5. OKF concepts;
6. vector-index documents;
7. knowledge/concept graph updates;
8. navigation/cards;
9. version, checksum, provenance, and audit events.

The vector database and generated projections are never sources of truth.

## 9. AI, Semantic, OKF, Vector, and MCP

### Agent

The agent receives allowed capabilities, inputs, preconditions, risk, approval requirements, expected output, and permitted next actions. It must act as a governed hypermedia client, not guess endpoints or generate direct SQL against business data.

### MCP

Sky365 MCP must expose controller/runtime knowledge through governed resources and actions through the Shared Action Core. UI, API, MCP, and agents must converge on the same command/policy/audit path.

### OKF and Semantic Knowledge

Publish human- and agent-readable business concepts, definitions, synonyms, relationships, lifecycle, rules, ownership, examples, exceptions, and links to canonical controllers.

Separate generated knowledge, curated knowledge, and observed/unverified knowledge.

### Vector

Index only retrieval-oriented descriptions and documentation with source ID, source version, tenant/security scope, language, checksum, and provenance. Never index secrets or inaccessible tenant data. Re-index by impact/dependency rather than rebuilding everything.

### Memory

Agent memory is not a copy of permissions, operational state, or the controller. Current permissions and record state must be resolved at execution time.

## 10. Migration Loop

```text
Discover
-> Classify
-> Register hierarchy
-> Scaffold canonical folders/navigation
-> Parse controller evidence
-> Map legacy capabilities
-> Generate canonical JSON
-> Compile runtime model
-> Publish governed projections
-> Run parity/security tests
-> Publish
-> Mark Migrated
```

The loop must be resumable, idempotent, versioned, auditable, and capable of reporting unresolved items.

## 11. Definition of Done

A system/module/controller is not Migrated merely because JSON exists.

It is Migrated only when:

- classification and placement are resolved;
- database registry and generated files agree;
- all used legacy capabilities are mapped or explicitly retired;
- keys and write behavior are proven;
- legacy behavioral parity tests pass;
- tenant isolation and direct-route/API/tool access are verified;
- navigation, card, URL, and start-page behavior work;
- runtime, AI, MCP, OKF, semantic, and vector projections are synchronized;
- version, checksum, provenance, and audit records exist;
- rollback/compatibility behavior is documented;
- no critical unresolved mappings remain.

## 12. Future Backlog — Not Part of the Initial Migration Scope

Keep these as later architectural work:

- multi-database provider engine;
- SQL Server/PostgreSQL/Oracle schema translation;
- key strategy translation across Identity, Sequence, Trigger, UUID, and provider-native generation;
- canonical Date, LocalDateTime, UtcDateTime, DateTimeOffset, and Time semantics;
- type mapping for Boolean, Decimal, Unicode, and JSON;
- provider-specific generated SQL;
- indexes, constraints, and relationship migration;
- MongoDB/document-provider strategy;
- database capability detection;
- cross-provider parity tests;
- table/schema move-copy planning with dependency and impact analysis.

Do not redesign the existing production database during the initial migration. Describe its reality accurately and preserve operation.

## 13. First Assignment for Codex

Codex must begin in read-only architecture/reverse-engineering mode:

1. locate the real database tables, services, schemas, registries, catalogs, and generators relevant to System Groups, Modules, controllers, folders, navigation, tenant activation, and runtime loading;
2. trace source-of-truth and generated-output boundaries with file/class/table evidence;
3. compare current behavior to this master plan;
4. produce:
   - Evidence Map;
   - Confirmed Existing Capabilities;
   - Gaps and Risks;
   - Decisions Required;
   - phased Execution Roadmap;
   - proposed boundaries for the two future skills.
5. do not refactor or modify production code during this first assignment.

After evidence review, implementation work should proceed in small, testable slices, beginning with the highest-risk tenant-isolation and source-of-truth gaps.
