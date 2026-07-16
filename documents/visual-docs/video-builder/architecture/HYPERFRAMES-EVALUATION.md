# HyperFrames Evaluation for SKY365 Video Builder

## Confirmed upstream capabilities

The official project describes HyperFrames as an open-source framework for turning HTML, CSS, media and seekable animations into deterministic MP4 videos. It supports local CLI use, agent skills and hosted rendering workflows. The documented loop includes initialization, browser preview and MP4 rendering. The project lists Node.js 22+ and FFmpeg as requirements.

The upstream capability map covers composition contracts, tracks, sub-compositions, seek-safe keyframes, GSAP, Lottie, Three.js, Anime.js, CSS, Web Animations API, media management, linting, checks, snapshots, preview and render.

## Why it fits our current direction

Our existing prototypes already use the same conceptual primitives:

- Scenes
- Layers
- HTML/CSS/SVG objects
- Semantic object IDs
- Object visibility
- Scene-specific overrides
- Timelines

HyperFrames can therefore be used below our model instead of replacing it.

## Evaluation matrix for VB4

| Area | Test | Acceptance evidence |
|---|---|---|
| Installation | Clean local install | Repeatable setup instructions |
| Preview | Open one SKY365 scene | Correct 16:9 composition |
| Seek | Jump to arbitrary time | Same visual state on repeated seek |
| Determinism | Render same scene twice | Matching frames or accepted tolerance |
| SVG | Robot and UI assets | Correct geometry and fonts |
| CSS layout | Grid, cells and overlays | No layout drift during render |
| Animation | Position, scale, opacity | Seek-safe output |
| Media | Image, audio and video | Correct loading and synchronization |
| Fonts | Local brand fonts | No fallback during rendering |
| Output | MP4 1080p | Correct duration, FPS and audio |
| Diagnostics | Lint/check/snapshot | Actionable failures |
| Performance | Preview and render measurements | Baseline captured in report |

## Questions that must be answered by experiment

- Can the same project preview and render identically across supported environments?
- How are video elements decoded and synchronized during seeking?
- What animation libraries are safe for deterministic rendering?
- How are fonts and remote assets frozen locally?
- Can scenes be rendered independently and recombined?
- What is the cost of 1080p and 4K rendering?
- How should cancellation, progress and retries be exposed?
- Which HyperFrames features should remain adapter-only rather than enter our schema?

## Risk rating

- Product-model risk: Low, provided the renderer-neutral schema rule is enforced.
- Integration risk: Medium until seek, media and font tests pass.
- Operational risk: Medium because render jobs require Node, browser infrastructure and FFmpeg.
- Lock-in risk: Medium if authors edit generated HyperFrames code directly; Low if edits remain operation-based and project JSON is canonical.

## Evaluation output

VB4 must produce:

1. A runnable HyperFrames spike.
2. One rendered SKY365 scene.
3. An evidence report with screenshots, commands, timings and failures.
4. A go / conditional-go / stop decision for VB5.