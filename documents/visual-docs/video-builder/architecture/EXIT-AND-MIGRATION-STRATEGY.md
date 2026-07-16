# Exit and Migration Strategy

## Objective

Use HyperFrames immediately without making saved SKY365 projects dependent on it.

## Portability rules

1. `project.json` contains renderer-neutral concepts only.
2. Engine-specific options live under `rendererConfig.<engine>`.
3. Generated HTML and composition code are build artifacts.
4. Agents modify projects through typed operations, not direct engine code.
5. Every supported feature has a renderer capability identifier.
6. Unsupported mappings produce explicit compile errors.
7. Golden conformance projects are rendered after adapter upgrades.

## Migration path

```text
Existing VideoProject
→ Validate schema
→ Select alternate adapter
→ Compile
→ Compare snapshots and metadata
→ Resolve unsupported capabilities
→ Render
```

## Data that must survive an engine change

- Project and scene IDs
- Scene order and durations
- Layer ordering
- Master objects and instances
- Semantic roles
- Asset references
- Transform values
- Visibility and style properties
- Keyframes and easing semantics
- Audio and caption cues
- Edit history and approvals

## Acceptable engine-specific data

- CLI profile names
- Renderer tuning flags
- Codec implementation settings
- Engine-specific optimization hints
- Template identifiers that have neutral fallbacks

## Exit triggers

Start a replacement evaluation when any of the following occurs:

- Required output cannot be rendered reliably.
- Preview and final render differ beyond tolerance.
- Upstream maintenance or security becomes unacceptable.
- Licensing changes conflict with SKY365 distribution.
- Infrastructure cost exceeds an agreed threshold.
- A competing adapter demonstrates materially better quality or economics.

## Fork decision

Fork HyperFrames only when:

- The missing capability is strategically important.
- Upstream contribution is rejected or too slow.
- The maintenance burden is explicitly funded.
- The fork remains behind the same adapter boundary.

A fork must not become the canonical SKY365 project schema.