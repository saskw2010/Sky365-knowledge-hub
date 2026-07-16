# Multi-Scene Object Matrix Editor

Interactive GitHub Pages prototype for managing persistent semantic objects across multiple video scenes.

## Model

```text
Project
→ Scenes
→ Layers
→ Objects
→ Master Objects
→ Scene Instances
→ Overrides
→ Render
```

## Included in this prototype

- Five selectable scenes with duration metadata
- Seven persistent semantic objects
- Scene × Object matrix
- Toggle object presence per scene
- Object inspector
- Apply changes to current scene, selected scenes, or all scenes
- Per-scene overrides for visibility, horizontal position, and scale
- Stable IDs such as `robot.main` and `screen.dashboard`
- Direct GitHub Pages operation without a framework or build pipeline

## Critical rule

Cross-scene operations target `objectId`, `masterId`, or `semanticRole`. They must not depend only on a layer number because layer order may differ between scenes.

## Next implementation steps

1. Move the in-page data model to `project.json`.
2. Add real master-object and instance inheritance.
3. Add scene duplication, ordering, creation, and deletion.
4. Add per-property keyframes and a global timeline.
5. Add asset replacement while preserving transforms and animation.
6. Add undo/redo transactions and visual diff.
7. Add partial render jobs for changed scenes only.
8. Wrap the same model in Vue components after the schema stabilizes.
