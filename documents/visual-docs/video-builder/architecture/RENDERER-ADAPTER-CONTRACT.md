# Renderer Adapter Contract

```ts
interface VideoRendererAdapter {
  readonly id: string;
  validate(project: VideoProject): Promise<ValidationReport>;
  compile(project: VideoProject): Promise<CompiledProject>;
  preview(input: PreviewRequest): Promise<PreviewSession>;
  seek(sessionId: string, timeMs: number): Promise<FrameState>;
  renderScene(request: RenderSceneRequest): Promise<RenderJob>;
  renderProject(request: RenderProjectRequest): Promise<RenderJob>;
  getProgress(jobId: string): Promise<RenderProgress>;
  cancel(jobId: string): Promise<void>;
}
```

## Contract rules

- Input is always a validated renderer-neutral `VideoProject`.
- Compilation is deterministic and repeatable.
- Unsupported features return structured errors; they are never silently ignored.
- Preview and render must use the same compiled semantics.
- Assets are resolved and frozen before production rendering.
- Render outputs include engine version, project schema version, FPS, dimensions, duration, checksums and warnings.

## HyperFrames adapter responsibilities

- Convert scenes, layers and objects into HyperFrames compositions.
- Map neutral keyframes to seek-safe supported animation runtimes.
- Generate engine-owned HTML and timing attributes.
- Run lint/check before render.
- Expose preview, seek, snapshot and render commands.
- Normalize CLI failures into SKY365 error codes.

## Forbidden coupling

- UI code must not call HyperFrames CLI directly.
- Agents must not persist direct DOM selectors as object identity.
- HyperFrames composition files must be treated as generated artifacts unless explicitly promoted into a reusable renderer template.
- Renderer-specific configuration must not leak into global project properties.