# Repository Sources

This registry preserves the origin, role, and migration policy of every repository contributing documentation to Sky365 Knowledge Hub.

| Repository | Primary role | Documentation policy | Initial migration status |
|---|---|---|---|
| `saskw2010/Sky365Offers` | Main Sky365 product and implementation repository | Import cross-project blueprints and shared architecture; retain implementation-specific docs beside code | Pending inventory |
| `saskw2010/all-agentic-architectures` | Forked architecture library plus Sky365 knowledge extensions | Import Sky365-owned strategy, academy, learning, visual, and product material; preserve upstream attribution and boundaries | Pending inventory |
| `saskw2010/sky365ERP` | ERP implementation repository | Import indexes and cross-project architecture; retain runtime, API, DB, and deployment evidence beside code | Pending inventory |
| `saskw2010/sky365API` | API implementation repository | Import shared API strategy and indexes; retain endpoint-specific implementation documentation beside code | Pending inventory |

## Source folder convention

```text
sources/{repository-name}/
├── SOURCE-MANIFEST.md
├── ORIGINAL-INDEXES/
├── documents/
├── docs/
└── archive/
```

Folders are created only when files are imported. Empty placeholder folders are not required.

## Required manifest fields

```yaml
source_repository: owner/name
source_default_branch: main-or-master
imported_at: YYYY-MM-DD
import_scope: description
source_commit: commit-sha
canonical_status: source-only | under-review | partially-promoted | fully-reviewed
license_or_ownership: description
notes: free text
```

## Attribution rule

Files originating from third-party or upstream projects must retain author, license, source repository, and original path. Importing a file does not transfer authorship.
