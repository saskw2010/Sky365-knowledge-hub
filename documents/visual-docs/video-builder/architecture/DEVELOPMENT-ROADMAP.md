# SKY365 Video Builder Development Roadmap

## VB4 — HyperFrames Foundation

Goal: prove one real SKY365 scene can be compiled, previewed, sought and rendered.

Deliverables:

- HyperFrames spike in a separate implementation repository or isolated folder
- Renderer-neutral `project.json`
- HyperFrames adapter v0
- One designed 16:9 scene using room, desk, screen, robot and captions
- Position, scale and opacity animations
- Local assets and fonts
- 1080p MP4 output
- Evidence report with commands, timings, screenshots and issues

Exit gate: deterministic seek and acceptable rendered output.

## VB5 — Multi-Scene Compiler

- Five visually distinct scenes
- Scene ordering and duration
- Transitions
- Master objects and scene instances
- Partial scene compilation
- Multi-scene preview and final render

Exit gate: a complete short product video rendered from one project JSON.

## VB6 — Agent Edit Operations

- Typed operation schema
- Current, selected and all-scene scopes
- Replace, move, resize, hide, show and restyle operations
- Validation, approval and audit log
- Undo/redo transaction history

Exit gate: natural-language edits modify project JSON without direct generated-code editing.

## VB7 — Timeline and Keyframes

- Global timeline
- Per-property keyframes
- Animation presets
- Audio, narration, captions and cue points
- Visual timeline editor
- Seek conformance tests

Exit gate: repeatable frame state at arbitrary timestamps.

## VB8 — Production Rendering

- Render queue
- Progress, cancellation and retry
- Asset freezing and checksums
- Cache and partial rerender
- Audio synchronization
- Output profiles: preview, 1080p and 4K
- Render metadata and observability

Exit gate: reliable unattended rendering with actionable failure reports.

## VB9 — Renderer Comparison

Run the same conformance project through HyperFrames and at least one alternative renderer.

Compare:

- Determinism
- Preview/render parity
- Media and font support
- Render speed
- Memory and infrastructure cost
- Agent authoring complexity
- Maintenance and security
- Migration effort

Decision options:

- Keep HyperFrames as primary renderer
- Keep it as one of several adapters
- Fork and extend it
- Replace it while retaining the SKY365 project model

## Work discipline

Each VB version receives a new immutable folder. No previous version is overwritten. Each phase must include architecture notes, implementation evidence, known gaps and a go/no-go decision.