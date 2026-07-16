# ADR-001: Use HyperFrames as the First Rendering Engine

- Status: Accepted for implementation
- Date: 2026-07-16
- Scope: SKY365 Video Builder VB4–VB8

## Context

SKY365 needs a programmable video system based on projects, scenes, layers, semantic objects and deterministic rendering. Building an editor is manageable; building a mature frame-accurate renderer, media pipeline and render infrastructure from zero would delay validation of the product model.

HyperFrames is an open-source Apache 2.0 framework that turns HTML, CSS, media and seekable animations into deterministic MP4 video. Its official workflow includes planning, HTML composition, seekable animation, linting, preview and rendering. It requires Node.js 22+ and FFmpeg.

## Decision

Adopt HyperFrames as the first rendering adapter, not as the canonical project model.

SKY365 will own:

- VideoProject schema
- Scene graph
- Layers and semantic objects
- Master objects and instances
- Timeline and keyframes
- Agent edit-operation vocabulary
- Validation and approval workflow
- Version history and migration

HyperFrames will initially provide:

- Browser preview
- Seekable animation execution
- Frame-deterministic rendering
- MP4 generation
- Media playback integration
- CLI-based diagnostics and render workflow

## Consequences

### Positive

- Faster path from VB3 prototype to real video output
- Reuse of a tested HTML/CSS/media rendering loop
- Strong compatibility with agent-driven authoring
- Ability to learn rendering requirements before building native infrastructure

### Negative

- Node.js 22+ and FFmpeg become development/runtime dependencies
- Adapter behavior must be tested against HyperFrames updates
- Some features may expose engine-specific constraints

## Guardrails

1. Canonical project JSON must remain renderer-neutral.
2. HyperFrames DOM, attributes and runtime calls are compiler output, not stored authoring truth.
3. Every renderer-specific field must be isolated under `rendererConfig.hyperframes`.
4. Automated conformance tests must compare preview time, scene duration, visibility, transforms and final render metadata.
5. A second renderer proof of concept must be completed by VB9 before declaring permanent engine lock-in.

## Revisit triggers

Reconsider this decision if HyperFrames cannot meet required determinism, media support, performance, licensing, maintenance, security or deployment requirements.