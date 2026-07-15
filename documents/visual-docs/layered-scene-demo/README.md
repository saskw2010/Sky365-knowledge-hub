# SKY365 Layered Scene Demo

Interactive GitHub Pages prototype demonstrating a seven-layer SVG scene.

## Capabilities

- Seven independently addressable SVG layers
- Show/hide controls for each layer
- Exploded/composed layer view
- Timeline playback and manual scrubbing
- Stable DOM IDs for future agent-based editing
- Responsive layout
- No build step; runs directly on GitHub Pages

## Scene structure

```text
Scene
├── Layer 7 — Foreground accents
├── Layer 6 — Robot character
├── Layer 5 — Monitor / screen
├── Layer 4 — Desk
├── Layer 3 — Shelves and decor
├── Layer 2 — Wall and window
└── Layer 1 — Room background
```

## Architectural direction

The current implementation is framework-free by design. The next phase can move the state and layer controls into Vue components while retaining the SVG scene as the deterministic render source.

Potential next steps:

1. Introduce a JSON scene manifest.
2. Add semantic object IDs below each layer.
3. Add asset replacement operations.
4. Add drag/reorder behavior.
5. Add export to project JSON and rendered PNG/video frames.
6. Connect the scene model to HyperFrames or another deterministic renderer.
