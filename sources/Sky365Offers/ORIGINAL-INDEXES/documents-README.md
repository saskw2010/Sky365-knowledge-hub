# Sky365 Documentation Hub

> This is the official documentation root for Sky365 / WytSky documentation.

The repository should use `documents/` as the long-term home for both Markdown source documentation and visual HTML documentation experiences.

---

## Documentation Policy

```text
Markdown = source of truth
HTML/CSS/JS = visual documentation experience
Git = synchronization authority
```

Do not treat GitHub and local files as two separate storage locations to manually overwrite.

Always use Git flow:

```bash
git status
git pull --rebase origin master
git add .
git commit -m "docs: describe the change"
git push origin master
```

---

## Target Structure

```text
documents/
├── README.md
├── MIGRATION-MAP.md
├── agentic-features/
│   ├── README.md
│   ├── ALL-AGENTIC-FEATURES.md
│   ├── 00-overview/
│   ├── 01-core-architecture/
│   ├── 02-agent-workbench/
│   ├── 03-observability/
│   ├── 04-human-governance/
│   ├── 05-rag-memory/
│   ├── 06-workflow-agents/
│   ├── 07-workers-addins/
│   ├── 08-blueprints/
│   └── decisions/
├── visual-docs/
│   └── agentic/
│       ├── README.md
│       ├── index.html
│       └── assets/
│           ├── styles.css
│           └── app.js
└── archive/
```

---

## Current Transition State

Some existing documentation currently lives under:

```text
docs/
```

The target is to gradually migrate documentation into:

```text
documents/
```

During migration, do not delete old `docs/` files until links and references are checked.

---

## Main Sections

| Section | Purpose |
|---|---|
| `agentic-features/` | Source documentation for all Sky365 agentic platform features |
| `visual-docs/agentic/` | Premium HTML documentation portal for visual reading and demos |
| `archive/` | Deprecated or historical documentation kept for traceability |

---

## Rule for Agents

Before adding or moving documentation:

1. Check whether the file already exists locally and online.
2. Pull latest remote changes.
3. Preserve existing content.
4. Move with Git-aware operations where possible.
5. Update indexes and links.
6. Do not delete old paths until the migration is verified.
