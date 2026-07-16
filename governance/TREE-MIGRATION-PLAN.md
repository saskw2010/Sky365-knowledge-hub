# Tree Migration Plan

## Principle

Improve navigation first, then metadata and aliases, and move files only when the move is justified and safely reversible.

## Migration stages

### Stage 0 — Freeze the current map

- Record current paths and public URLs.
- Record the owning document or experience for every major area.
- Preserve source manifests and original indexes.
- Do not move or delete content.

### Stage 1 — Navigation layer

- Publish the interactive tree map.
- Link it from the root landing page.
- Add canonical links between public experiences and Markdown documents.
- Use the generated HTML library for mobile browsing.

### Stage 2 — Metadata layer

Add or normalize metadata for canonical documents:

```yaml
id: BP-AI-006
kind: blueprint
status: active
owner: Mostafa Elnagar
domain: ai
stage: blueprint
canonical: true
source_refs: []
last_reviewed: YYYY-MM-DD
```

### Stage 3 — Missing logical categories

Create category indexes before moving files:

- Strategy
- Domains
- Capabilities
- Products
- Architecture
- Specifications
- Promising projects
- Investment-ready portfolio

### Stage 4 — Aliases and redirects

Before moving a published file:

1. Identify inbound links.
2. Create its new path.
3. Keep an HTML redirect or compatibility page at the old path.
4. Update internal links.
5. Run link validation.
6. Verify GitHub Pages deployment.

### Stage 5 — Controlled physical migration

Move only one bounded category per pull request. Every migration pull request must include:

- old path;
- new path;
- reason;
- affected links;
- redirects;
- validation evidence;
- rollback plan.

### Stage 6 — Cleanup

Delete obsolete aliases only after an agreed compatibility period and after confirming no active external references depend on them.

## Validation gates

| Gate | Required evidence |
|---|---|
| Structure | Target category and owner are defined |
| Links | Internal link checker passes |
| Deployment | GitHub Pages build succeeds |
| Provenance | Source references remain intact |
| Compatibility | Old URL continues to resolve or redirect |
| Rollback | Previous tree can be restored from Git history |

## Current authorization

Authorized now:

- interactive navigation;
- governance documents;
- category indexes;
- metadata normalization;
- link validation.

Not yet authorized:

- mass file moves;
- source deletion;
- replacing Markdown as source of truth;
- breaking published URLs;
- rewriting preserved source evidence.
