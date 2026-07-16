# Content Ownership Map

## Purpose

Define which artifact owns each type of information so public pages, generated HTML and source snapshots do not compete with canonical documentation.

## Ownership matrix

| Content class | Canonical owner | Public presentation | Review responsibility |
|---|---|---|---|
| Vision and strategic direction | `documents/00-vision/` and approved strategy documents | Root landing page and `strategy/` | Mostafa Elnagar |
| Product and capability definitions | `MASTER-INDEX.md` and canonical product documents | Portal cards and tree map | Product architecture owner |
| Architecture and blueprints | `documents/07-blueprints/` | Generated HTML and visual demos | Architecture owner |
| Research evidence | `documents/08-research/` and `sectors/research/` | Research sector pages | Research track owner |
| Architecture decisions | `documents/09-decisions/` | Generated HTML | Decision approver |
| Roadmaps | `documents/10-roadmaps/` | Portal and roadmap views | Delivery owner |
| Investment operating model | `sectors/investment/` and investment roadmap | `investment/index.html` | Venture owner |
| Investor-facing opportunity summaries | Approved investment profile documents | `investment/index.html` | Venture owner and business approver |
| Governance and migration | `governance/` | Tree map and generated HTML | Repository owner |
| Source evidence | `sources/` manifests and preserved files | Source indexes only | Migration owner |
| Generated HTML | Generated from Markdown during deployment | GitHub Pages | Build automation; not canonical |
| Interactive demos | Their own source files plus linked canonical document | Public demo pages | Demo owner |

## Naming authority

Visible ownership names should use:

- **Mostafa Elnagar**
- **WytSky Cloud Solutions Oy**
- **SKY365**

Alternative spellings found in preserved source material are not silently rewritten unless the file is an active canonical document rather than historical evidence.

## Publication rule

A public page may summarize a canonical document, but it must link back to the canonical artifact or its generated HTML counterpart.

## Investment publication rule

An opportunity should appear publicly only after it has:

1. a named problem and target user;
2. evidence or verified strategic basis;
3. a defined product or pilot;
4. a current stage;
5. a next milestone;
6. a partnership or funding requirement;
7. an owner;
8. known risks and unresolved questions.

## Review cadence

- Active landing experiences: review after meaningful product or portfolio changes.
- Investment profiles: review before each external sharing cycle.
- Research tracks: review when new evidence changes Adopt / Watch / Reject status.
- Governance maps: review after structural changes.
- Source manifests: update when a new snapshot or repository source is added.
