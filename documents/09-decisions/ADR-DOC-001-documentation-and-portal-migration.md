# ADR-DOC-001 — Documentation and Portal Migration from all-agentic-architectures

- **Status:** Accepted
- **Date:** 2026-07-15
- **Scope:** Sky365 Knowledge Hub visual portal and documentation

## Context

The repository `saskw2010/all-agentic-architectures` contains two distinct bodies of work:

1. The original open-source Agentic Architectures library and its upstream technical materials.
2. Sky365-created visual portals, learning applications, strategy pages, architecture explanations, and documentation extensions.

The new canonical repository `saskw2010/Sky365-knowledge-hub` is intended to become the durable home for Sky365 knowledge, decisions, blueprints, research, and visual documentation.

## Decision

Copy the documentation and visual applications required by Sky365 from `saskw2010/all-agentic-architectures` into `saskw2010/Sky365-knowledge-hub` and continue future documentation development in the Knowledge Hub.

The Python package, notebooks, tests, and executable upstream library are not part of this migration.

## Migration scope

### Included

- Portal HTML, CSS, JavaScript, icons, images, motion assets, and navigation.
- Sky365-authored documentation and architecture explanations.
- Academy pages and learning paths used as knowledge experiences.
- Strategy, research, design-studio, and Sky365 architecture documentation.
- Relevant upstream documentation excerpts when useful to the Knowledge Hub, provided attribution and license notices are preserved.

### Excluded

- `agentic_architectures/` Python package.
- Python notebooks and runtime examples unless referenced externally.
- Tests, package configuration, and implementation code belonging to the upstream library.
- Any content that cannot be confidently attributed or licensed for reuse.

## Attribution rule

Every migrated upstream-derived document or substantial excerpt must identify:

- **Original repository:** `FareedKhan-dev/all-agentic-architectures`
- **Sky365 fork:** `saskw2010/all-agentic-architectures`
- **Canonical Sky365 destination:** `saskw2010/Sky365-knowledge-hub`
- Original author or project attribution where known.
- Applicable license, currently MIT for the upstream repository.
- Original path and migrated destination path.
- Whether the content is copied unchanged, adapted, summarized, or extended.

Sky365-authored material must be distinguished from upstream material. Attribution must be visible and must not be hidden only in Git history.

## Canonical ownership

After verified migration:

- `Sky365-knowledge-hub` becomes the canonical home for Sky365 documentation and visual knowledge applications.
- `all-agentic-architectures` remains the forked implementation/reference repository and historical source.
- The upstream repository remains the authoritative source for the original open-source library.

## Consequences

### Positive

- Reuses the strongest existing portal design instead of rebuilding it.
- Preserves useful documentation while respecting authorship.
- Separates knowledge assets from Python implementation code.
- Gives Sky365 one durable, searchable, publishable documentation home.

### Risks

- Copying without a manifest could obscure provenance.
- Maintaining duplicate live copies could create drift.
- Relative links and assets may break during migration.
- Upstream updates will not automatically appear in the Knowledge Hub.

## Controls

1. Create a source manifest for every migrated application or documentation set.
2. Preserve original files before adapting them.
3. Use a migration map with source path, destination path, status, and attribution.
4. Validate links, assets, responsive layout, and GitHub Pages routes.
5. Add a visible attribution section to migrated upstream-derived pages.
6. Do not delete or deprecate the original fork until the new portal is verified.
7. Avoid dual editing after migration; the Knowledge Hub becomes canonical.

## Revisit conditions

Revisit this decision if licensing changes, upstream attribution requirements change, or the Knowledge Hub adopts a generated documentation framework that makes direct HTML copying unnecessary.