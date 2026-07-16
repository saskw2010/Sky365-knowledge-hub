# SKY365 Video Builder — HyperFrames Foundation

This folder defines the implementation plan for building the SKY365 Video Builder on top of HyperFrames without making HyperFrames the product's source of truth.

## Decision

SKY365 owns the project model, scenes, layers, semantic objects, timeline, edit operations, approvals and version history. HyperFrames is the first rendering adapter.

```text
Agent / Editor
→ Validated Edit Operations
→ SKY365 Video Project JSON
→ Scene Compiler
→ Renderer Adapter
→ HyperFrames
→ Preview / Render
```

## Documents

1. [ADR-001 — Adopt HyperFrames as the first renderer](ADR-001-HYPERFRAMES-FIRST-RENDERER.md)
2. [HyperFrames evaluation](HYPERFRAMES-EVALUATION.md)
3. [Video project model](VIDEO-PROJECT-MODEL.md)
4. [Renderer adapter contract](RENDERER-ADAPTER-CONTRACT.md)
5. [Development roadmap](DEVELOPMENT-ROADMAP.md)
6. [Exit and migration strategy](EXIT-AND-MIGRATION-STRATEGY.md)

## Version sequence

```text
VB1 Single Scene Layers
→ VB2 Multi-Scene Matrix
→ VB3 Corrected Scope Model
→ VB4 HyperFrames Foundation
→ VB5 Multi-Scene Compiler
→ VB6 Agent Edit Operations
→ VB7 Timeline and Keyframes
→ VB8 Production Rendering
→ VB9 Renderer Comparison
```

## Non-negotiable rule

No canonical project data may depend on HyperFrames-specific DOM structures, selectors or runtime APIs. Engine-specific values must live under `rendererConfig.hyperframes`.