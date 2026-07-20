param(
    [string]$Owner = "saskw2010",
    [ValidateRange(1, 100)]
    [int]$RunLimit = 10,
    [string]$OutputPath = "governance/GITHUB-WORKFLOW-AUDIT.md"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run: gh auth login"
}

& gh auth status *> $null
if ($LASTEXITCODE -ne 0) {
    throw "GitHub CLI is not authenticated. Run: gh auth login"
}

Write-Host "Loading repositories for $Owner ..."
$reposJson = & gh repo list $Owner --limit 1000 --json nameWithOwner,isArchived,isFork,visibility,defaultBranchRef
if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace(($reposJson -join "`n"))) {
    throw "Unable to list repositories for $Owner. Check gh authentication and repository access."
}

$repos = (($reposJson -join "`n") | ConvertFrom-Json)
$rows = New-Object System.Collections.Generic.List[object]
$repoIndex = 0

foreach ($repo in $repos) {
    $repoIndex++
    $repoName = $repo.nameWithOwner
    Write-Progress -Activity "Auditing GitHub workflows" -Status "$repoIndex of $($repos.Count): $repoName" -PercentComplete (($repoIndex / [math]::Max($repos.Count, 1)) * 100)

    $workflowsOutput = & gh api "repos/$repoName/actions/workflows?per_page=100" 2>$null
    if ($LASTEXITCODE -ne 0 -or [string]::IsNullOrWhiteSpace(($workflowsOutput -join "`n"))) {
        continue
    }

    $workflowPayload = (($workflowsOutput -join "`n") | ConvertFrom-Json)
    $workflows = @($workflowPayload.workflows)

    foreach ($workflow in $workflows) {
        $runsOutput = & gh api "repos/$repoName/actions/workflows/$($workflow.id)/runs?per_page=$RunLimit" 2>$null
        $runs = @()

        if ($LASTEXITCODE -eq 0 -and -not [string]::IsNullOrWhiteSpace(($runsOutput -join "`n"))) {
            $runPayload = (($runsOutput -join "`n") | ConvertFrom-Json)
            $runs = @($runPayload.workflow_runs)
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

        $lastRunUrl = ""
        if ($runs.Count -gt 0) {
            $lastRunUrl = [string]$runs[0].html_url
        }

        $rows.Add([pscustomobject]@{
            Repository     = $repoName
            Visibility     = $repo.visibility
            Archived       = [bool]$repo.isArchived
            Fork           = [bool]$repo.isFork
            Workflow       = $workflow.name
            Path           = $workflow.path
            State          = $workflow.state
            TotalChecked   = $completed.Count
            Success        = $success
            Failure        = $failure
            Cancelled      = $cancelled
            Classification = $classification
            LastRun        = $lastRunUrl
        })
    }
}

Write-Progress -Activity "Auditing GitHub workflows" -Completed

$generated = Get-Date -Format "yyyy-MM-dd HH:mm:ss K"
$summary = @($rows | Group-Object Classification | Sort-Object Name)
$md = New-Object System.Collections.Generic.List[string]

[void]$md.Add("# GitHub Workflow Audit")
[void]$md.Add("")
[void]$md.Add("Generated: $generated")
[void]$md.Add("")
[void]$md.Add(('Owner: `{0}`' -f $Owner))
[void]$md.Add("")
[void]$md.Add("## Summary")
[void]$md.Add("")
[void]$md.Add("| Classification | Count |")
[void]$md.Add("|---|---:|")

foreach ($group in $summary) {
    [void]$md.Add(("| {0} | {1} |" -f $group.Name, $group.Count))
}

[void]$md.Add("")
[void]$md.Add("## Detailed Inventory")
[void]$md.Add("")
[void]$md.Add("| Repository | Workflow | State | Checked | Success | Failure | Cancelled | Classification | Last Run |")
[void]$md.Add("|---|---|---|---:|---:|---:|---:|---|---|")

foreach ($row in ($rows | Sort-Object Classification, Repository, Workflow)) {
    $lastRun = "-"
    if (-not [string]::IsNullOrWhiteSpace($row.LastRun)) {
        $lastRun = "[Open]($($row.LastRun))"
    }

    $line = "| {0} | {1} | {2} | {3} | {4} | {5} | {6} | {7} | {8} |" -f `
        $row.Repository, $row.Workflow, $row.State, $row.TotalChecked, `
        $row.Success, $row.Failure, $row.Cancelled, $row.Classification, $lastRun
    [void]$md.Add($line)
}

[void]$md.Add("")
[void]$md.Add("## Decision Rules")
[void]$md.Add("")
[void]$md.Add('- `ALWAYS_SUCCESS`: keep enabled.')
[void]$md.Add('- `FLAKY`: investigate logs; do not disable automatically.')
[void]$md.Add('- `ALWAYS_FAILING`: inspect the repeated failure reason, then disable or delete only after review.')
[void]$md.Add('- `NO_HISTORY`: review purpose and triggers before deciding.')
[void]$md.Add('- Archived repositories should normally have workflows disabled unless intentionally maintained.')

$directory = Split-Path -Parent $OutputPath
if ($directory -and -not (Test-Path $directory)) {
    New-Item -ItemType Directory -Path $directory -Force | Out-Null
}

$csvPath = [System.IO.Path]::ChangeExtension($OutputPath, ".csv")
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText((Join-Path (Get-Location) $OutputPath), ($md -join "`r`n"), $utf8NoBom)
$rows | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

Write-Host ""
Write-Host "Audit complete: $($rows.Count) workflows found."
Write-Host "Markdown: $OutputPath"
Write-Host "CSV: $csvPath"
