# SKY365 Video Project Model

## Purpose

This schema is the canonical source of truth. Renderers receive compiled output from it; they do not define it.

## Root structure

```json
{
  "schemaVersion": "1.0",
  "projectId": "sky365-demo",
  "title": "SKY365 Product Introduction",
  "canvas": { "width": 1920, "height": 1080, "fps": 30 },
  "assets": [],
  "masterObjects": [],
  "scenes": [],
  "timeline": [],
  "rendererConfig": { "hyperframes": {} }
}
```

## Scene

```json
{
  "sceneId": "scene-01",
  "name": "Opening",
  "durationMs": 6000,
  "layout": "presenter-and-screen",
  "layers": [],
  "transitions": { "in": null, "out": null }
}
```

## Layer

A layer controls compositing order and grouping. It is not assumed to contain only one object.

```json
{
  "layerId": "characters",
  "name": "Characters",
  "zIndex": 60,
  "objects": ["robot.main@scene-01"]
}
```

## Object instance

```json
{
  "instanceId": "robot.main@scene-01",
  "masterId": "robot.main",
  "semanticRole": "presenter",
  "type": "svg",
  "transform": { "x": 520, "y": 270, "scale": 1, "rotation": 0 },
  "visible": true,
  "overrides": {},
  "animations": []
}
```

## Animation

```json
{
  "animationId": "robot-enter",
  "targetInstanceId": "robot.main@scene-01",
  "property": "transform.x",
  "startMs": 500,
  "durationMs": 900,
  "from": 360,
  "to": 520,
  "easing": "easeOutCubic"
}
```

## Edit operations

Agents and UI controls modify the project through validated transactions rather than direct DOM edits.

```json
{
  "operation": "replaceAsset",
  "target": { "masterId": "robot.main" },
  "scope": { "type": "allScenes" },
  "value": { "assetId": "robot.blue.v2" },
  "preserve": ["transform", "animations", "timing"]
}
```

## Required identity fields

Cross-scene edits must resolve through one or more of:

- `projectId`
- `sceneId`
- `layerId`
- `masterId`
- `instanceId`
- `semanticRole`
- `assetId`
- `animationId`

Layer number alone is never a valid semantic target.

## Validation rules

- IDs are stable and unique in their namespace.
- Scene duration must cover all contained animations.
- Every instance references an existing master object or declares an inline object.
- Every asset must be local or frozen before production render.
- Unsupported renderer properties must fail compilation explicitly.
- Project migrations must preserve older saved versions.