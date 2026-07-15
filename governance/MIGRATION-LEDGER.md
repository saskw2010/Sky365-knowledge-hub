# Sky365 Migration Ledger

## Operating loop

Every migration cycle follows:

`Discover → Inventory → Snapshot → Classify → Adapt → Link → Validate → Promote → Rearrange → Repeat`

This ledger records what actually happened. It must not claim completion based on landing pages alone.

## Transformation states

- `UNCHANGED` — exact source copy or pinned snapshot.
- `ADAPTED` — design, wording, or navigation changed while source lineage remains visible.
- `SUMMARIZED` — source condensed into a new canonical document.
- `EXTENDED` — source retained and expanded with Sky365-owned content.
- `REDIRECT` — compatibility route only.
- `SOURCE-ONLY` — discovered but not yet represented canonically.

## Validation fields

Each row should eventually include:

- source repository and commit;
- original path;
- destination path;
- owner/author and license;
- transformation state;
- content validation;
- local-link validation;
- asset validation;
- visual validation;
- inbound navigation route;
- canonical status.

## Active ledger

| ID | Source | Original path | Destination | State | Validation | Canonical status | Next action |
|---|---|---|---|---|---|---|---|
| MIG-001 | `all-agentic-architectures` | root visual portal | `portal/index.html` | `ADAPTED` | Navigable; exact dependency parity not complete | Entry experience | Snapshot original portal and dependencies |
| MIG-002 | `all-agentic-architectures` | `academy/` | `academy/index.html` | `ADAPTED` | Entry route works; full assets/data not copied | Entry experience | Copy exact Academy HTML/CSS/JS/SVG/Lottie/GIF/data under source snapshot |
| MIG-003 | `all-agentic-architectures` | `learning-paths/` | `learning-paths/index.html` | `ADAPTED` | Entry route works; datasets and filters pending | Entry experience | Snapshot full application and data |
| MIG-004 | `all-agentic-architectures` | `stories/` | `stories/index.html` | `ADAPTED` | Entry route works; full story/media parity pending | Entry experience | Snapshot library and Turing Trail assets |
| MIG-005 | `all-agentic-architectures` | `strategy/` | `strategy/index.html` | `ADAPTED` | Entry route works; application data pending | Entry experience | Snapshot exact strategy application |
| MIG-006 | `all-agentic-architectures` | `agentic-design-studio/` | `agentic-design-studio/index.html` | `ADAPTED` | Entry route works; diagrams/assets pending | Entry experience | Snapshot exact design studio application |
| MIG-007 | `all-agentic-architectures` | portal-relative app routes | `portal/*/index.html` | `REDIRECT` | Compatibility routes added | Non-canonical | Recheck after final route hierarchy |
| MIG-008 | `all-agentic-architectures` | provenance and ownership context | `sources/all-agentic-architectures/SOURCE-MANIFEST.md` | `SUMMARIZED` | Present | Source governance | Add pinned fork and upstream commits |
| MIG-009 | discussions and existing Knowledge Hub docs | platform hierarchy | `index.html`, `MASTER-INDEX.md` | `EXTENDED` | Published | Canonical navigation | Continue rearranging as census matures |
| MIG-010 | Knowledge Hub research | research sector and mind map | `documents/08-research/` | `EXTENDED` | Present | Canonical | Link into central mind map and topic indexes |
| MIG-011 | Knowledge Hub project strategy | project and investor portfolio | strategy/investment documents | `EXTENDED` | Present | Canonical candidate | Classify under business/portfolio hierarchy |
| MIG-012 | `all-agentic-architectures` | `academy/local-ai/*.md` | source repository HTML routes | `ADAPTED` | HTML experiences published in source repo | Source-side experience | Snapshot or canonically re-home after wider visual-app migration |
| MIG-013 | `Sky365Offers` | `documents/` | `sources/Sky365Offers/documents/` | `SOURCE-ONLY` | Not imported | Pending | Pin commit and copy unchanged indexes/content |
| MIG-014 | `Sky365Offers` | `docs/` | `sources/Sky365Offers/docs/` | `SOURCE-ONLY` | Not imported | Pending | Inventory and classify shared material |
| MIG-015 | `sky365ERP` | documentation paths | `sources/sky365ERP/` | `SOURCE-ONLY` | Not discovered | Pending | Discover documentation and implementation-evidence indexes |
| MIG-016 | `sky365API` | documentation paths | `sources/sky365API/` | `SOURCE-ONLY` | Not discovered | Pending | Discover API and integration documentation |

## Rearrangement queue

| Priority | Rearrangement | Reason | Blocking condition |
|---:|---|---|---|
| 1 | Separate source snapshots from canonical content | Prevent adapted pages from being mistaken for exact migration | None |
| 2 | Create one central mental map with stable domain IDs | Give every item a parent and a path | Census v1 |
| 3 | Group visual applications under a declared experience layer | Avoid top-level route sprawl | Exact source snapshots underway |
| 4 | Add repository/topic/source indexes | Prevent orphan pages | Initial snapshots |
| 5 | Add link and asset validation | Stop broken public experiences | Static paths known |
| 6 | Promote reviewed documents into canonical domains | Reduce duplication | Ownership and duplicate checks |
| 7 | Create Arabic and English editions | Avoid mixed-direction final content | Content and hierarchy substantially stable |

## Non-destructive rule

Rearrangement never means deleting historical evidence. Old paths may remain as redirects, archived snapshots, or source references until the new canonical route is validated.