param(
    [string]$Owner = "saskw2010",
    [int]$RunLimit = 10,
    [string]$OutputPath = "governance/GITHUB-WORKFLOW-AUDIT.md"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run: gh auth login"
}

$authStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
    throw "GitHub CLI is not authenticated. Run: gh auth login"
}

$repos = gh repo list $Owner --limit 1000 --json nameWithOwner,isArchived,isFork,visibility,defaultBranchRef | ConvertFrom-Json
$rows = New-Object System.Collections.Generic.List[object]

foreach ($repo in $repos) {
    $repoName = $repo.nameWithOwner

    $workflowsJson = gh api "repos/$repoName/actions/workflows?per_page=100" 2>$null
    if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace($workflowsJson)) {
        continue
    }

    $workflows = ($workflowsJson | ConvertFrom-Json).workflows
    foreach ($workflow in $workflows) {
        $runsJson = gh api "repos/$repoName/actions/workflows/$($workflow.id)/runs?per_page=$RunLimit" 2>$null
        $runs = @()
        if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrWhiteSpace($runsJson)) {
            $runs = ($runsJson | ConvertFrom-Json).workflow_runs
        }

        $completed = @($runs | Where-Object { $_.status -eq "completed" })
        $success = @($completed | Where-Object { $_.conclusion -eq "success" }).Count
        $failure = @($completed | Where-Object { $_.conclusion -eq "failure" }).Count
        $cancelled = @($completed | Where-Object { $_.conclusion -eq "cancelled" }).Count

        $classification = if ($completed.Count -eq 0) {
            "NO_HISTORY"
        }
        elseif ($failure -eq 0 -and $success -gt 0) {
            "ALWAYS_SUCCESS"
        }
        elseif ($success -eq 0 -and $failure -ge 3) {
            "ALWAYS_FAILING"
        }
        elseif ($success -gt 0 -and $failure -gt 0) {
            "FLAKY"
        }
        elseif ($failure -gt 0) {
            "FAILING_INSUFFICIENT_HISTORY"
        }
        else {
            "OTHER"
        }

        $rows.Add([pscustomobject]@{
            Repository = $repoName
            Visibility = $repo.visibility
            Archived = $repo.isArchived
            Workflow = $workflow.name
            Path = $workflow.path
            State = $workflow.state
            TotalChecked = $completed.Count
            Success = $success
            Failure = $failure
            Cancelled = $cancelled
            Classification = $classification
            LastRun = if ($runs.Count -gt 0) { $runs[0].html_url } else { "" }
        })
    }
}

$generated = Get-Date -Format "yyyy-MM-dd HH:mm:ss K"
$summary = $rows | Group-Object Classification | Sort-Object Name

$md = New-Object System.Collections.Generic.List[string]
$md.Add("# GitHub Workflow Audit")
$md.Add("")
$md.Add("Generated: $generated")
$md.Add("")
$md.Add("Owner: `$Owner`")
$md.Add("")
$md.Add("## Summary")
$md.Add("")
$md.Add("| Classification | Count |")
$md.Add("|---|---:|")
foreach ($group in $summary) {
    $md.Add("| $($group.Name) | $($group.Count) |")
}
$md.Add("")
$md.Add("## Detailed Inventory")
$md.Add("")
$md.Add("| Repository | Workflow | State | Checked | Success | Failure | Cancelled | Classification | Last Run |")
$md.Add("|---|---|---|---:|---:|---:|---:|---|---|")
foreach ($row in ($rows | Sort-Object Classification, Repository, Workflow)) {
    $lastRun = if ($row.LastRun) { "[Open]($($row.LastRun))" } else { "—" }
    $md.Add("| $($row.Repository) | $($row.Workflow) | $($row.State) | $($row.TotalChecked) | $($row.Success) | $($row.Failure) | $($row.Cancelled) | $($row.Classification) | $lastRun |")
}
$md.Add("")
$md.Add("## Decision Rules")
$md.Add("")
$md.Add("- `ALWAYS_SUCCESS`: keep enabled.")
$md.Add("- `FLAKY`: investigate logs; do not disable automatically.")
$md.Add("- `ALWAYS_FAILING`: inspect the repeated failure reason, then disable or delete only after review.")
$md.Add("- `NO_HISTORY`: review purpose and triggers before deciding.")
$md.Add("- Archived repositories should normally have workflows disabled unless intentionally maintained.")

$directory = Split-Path -Parent $OutputPath
if ($directory -and -not (Test-Path $directory)) {
    New-Item -ItemType Directory -Path $directory -Force | Out-Null
}

$md -join "`n" | Set-Content -Path $OutputPath -Encoding utf8
$rows | Export-Csv -Path ([System.IO.Path]::ChangeExtension($OutputPath, ".csv")) -NoTypeInformation -Encoding utf8

Write-Host "Audit complete: $($rows.Count) workflows found."
Write-Host "Markdown: $OutputPath"
Write-Host "CSV: $([System.IO.Path]::ChangeExtension($OutputPath, '.csv'))"
