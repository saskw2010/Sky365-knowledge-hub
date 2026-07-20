# SKY365 Master Task Ledger

_Last updated: 2026-07-20_

## Purpose

This ledger is the canonical cross-session register for unfinished work. A task is marked completed only when execution evidence exists, such as a committed file, merged pull request, verified tool result, sent message, or delivered artifact.

## Status model

- `Completed` — execution finished with evidence.
- `In Progress` — execution started but is not complete.
- `Pending` — accepted task not yet started.
- `Blocked` — cannot proceed because required access, information, or an external action is missing.
- `Backlog` — deferred idea, not a current commitment.
- `Cancelled` — intentionally stopped.

## Open & Carry-over Tasks

| ID | Priority | Task | Related Project | Status | Owner | Reason Unfinished | Evidence / Current Progress | Exact Next Action |
|---|---|---|---|---|---|---|---|---|
| GH-WF-001 | P1 | Audit GitHub Actions workflows across all accessible repositories and classify each as stable success, flaky/recovered, or persistent failure. | GitHub Governance | Pending | ChatGPT | Only `saskw2010/WindowsService20220612` was inspected; no organization-wide or account-wide inventory was completed. | The single CodeQL workflow in `WindowsService20220612` was inspected and permanently removed from `master`. | Enumerate accessible repositories, list `.github/workflows/*` and recent runs for each, then produce a classification report before disabling anything else. |
| GH-WF-002 | P2 | Remove the obsolete branch `fix/codeql-workflow-2026` after confirming it is no longer needed. | WindowsService20220612 | Pending | ChatGPT / Mostafa | The experimental pull request was closed, but branch deletion was not performed or verified. | PR #1 is closed without merge; CodeQL file is absent from `master`. | Delete the remote branch through GitHub UI or an available branch-delete action, then verify it no longer exists. |
| CHAT-OPS-001 | P1 | Add the approved continuous Task List and session-close audit rules to ChatGPT Custom Instructions. | ChatGPT Operating System | Blocked | Mostafa | The personality setting can be read or changed, but the available settings tool does not write Custom Instructions. | Final instruction text was drafted in the conversation; current personality remains `Professional`. | Paste the approved instruction into Settings → Customize ChatGPT → Custom Instructions, then verify it appears in a new conversation. |
| CHAT-OPS-002 | P1 | Make the session-close command update this ledger and a session/project backlog on every closure. | ChatGPT Operating System / Knowledge Hub | In Progress | ChatGPT | The rule is agreed and this ledger now exists, but repeatability across future sessions is not yet proven. | `governance/MASTER-TASK-LEDGER.md` created and current session backlog recorded. | On the next session closure, append unresolved items here and link the new session backlog from `MASTER-INDEX.md`. |

## Completed in the current session

| ID | Task | Evidence |
|---|---|---|
| GH-WF-C001 | Permanently stop the CodeQL workflow in `saskw2010/WindowsService20220612`. | `.github/workflows/codeql.yml` deleted from `master`; commit `6e4f24862f32233c9aad681343a604a7faed6f25`; subsequent fetch returns 404. |
| GH-WF-C002 | Close the experimental CodeQL repair pull request. | Pull request #1 closed without merge. |
| CHAT-OPS-C001 | Define a structured close-session audit format with priority, owner, evidence, and next action. | Final reusable instruction delivered in the conversation. |

## Governance rule

Never delete or disable a workflow solely because one run failed. First classify its history and determine whether the failure is caused by the workflow, the project build, permissions, secrets, runner compatibility, or an external dependency. Persistent failures may be disabled only after this distinction is recorded.
