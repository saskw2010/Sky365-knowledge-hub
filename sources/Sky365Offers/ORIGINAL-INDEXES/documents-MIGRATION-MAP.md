# Documentation Migration Map

> Canonical migration plan for moving Sky365 documentation into `documents/`.

---

## Decision

The repository root should remain clean.

Only high-level repository files should stay in root, especially:

```text
README.md
AGENTS.md
LICENSE
.gitignore
```

All documentation source files, visual docs, and generated documentation assets should live under:

```text
documents/
```

---

## Source and Target Paths

| Current / Legacy Path | Target Path | Action |
|---|---|---|
| `docs/README.md` | `documents/README.md` | migrate / merge |
| `docs/blueprints/` | `documents/blueprints/` or `documents/agentic-features/08-blueprints/` | migrate by domain |
| `docs/agentic-features/` | `documents/agentic-features/` | migrate after link check |
| future visual HTML docs | `documents/visual-docs/` | create here only |
| old / deprecated docs | `documents/archive/` | archive with note |

---

## Agentic Documentation Target

```text
documents/agentic-features/
├── README.md
├── ALL-AGENTIC-FEATURES.md
├── 00-overview/
├── 01-core-architecture/
├── 02-agent-workbench/
├── 03-observability/
├── 04-human-governance/
├── 05-rag-memory/
├── 06-workflow-agents/
├── 07-workers-addins/
├── 08-blueprints/
└── decisions/
```

---

## Visual Documentation Target

```text
documents/visual-docs/agentic/
├── README.md
├── index.html
├── pages/
└── assets/
    ├── styles.css
    └── app.js
```

---

## Synchronization Rules

### Correct

```bash
git pull --rebase origin master
git status
git mv docs/agentic-features documents/agentic-features
git add .
git commit -m "docs: migrate agentic documentation into documents"
git push origin master
```

### Wrong

```text
Download ZIP from GitHub, manually copy files, overwrite local folders, then upload again.
```

That approach can lose history, overwrite newer files, and create untracked duplicates.

---

## Conflict Policy

If a file changed both online and locally:

1. Do not overwrite either side blindly.
2. Run `git pull --rebase origin master`.
3. Resolve conflicts manually.
4. Preserve both useful changes.
5. Commit the resolved state.

---

## Migration Safety Checklist

- [ ] Pull latest remote changes.
- [ ] Check `git status` before moving.
- [ ] Confirm old and new paths.
- [ ] Move files using `git mv` locally where possible.
- [ ] Update Markdown links.
- [ ] Update visual documentation links.
- [ ] Update root README documentation links.
- [ ] Keep `AGENTS.md` in root.
- [ ] Do not delete legacy `docs/` until verification is complete.

---

## Final Target

After migration is verified:

```text
root/
├── README.md
├── AGENTS.md
├── documents/
└── source code folders
```

No scattered documentation folders should remain outside `documents/` unless there is a strong technical reason.
