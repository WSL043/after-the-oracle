$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills/after-the-oracle"
$targets = @(
    ".github/skills/after-the-oracle",
    ".agents/skills/after-the-oracle",
    ".windsurf/skills/after-the-oracle"
)

foreach ($targetRel in $targets) {
    $target = Join-Path $repoRoot $targetRel
    if (Test-Path -LiteralPath $target) {
        Remove-Item -LiteralPath $target -Recurse -Force
    }
    New-Item -ItemType Directory -Force -Path $target | Out-Null
    Copy-Item -Path (Join-Path $source "*") -Destination $target -Recurse -Force
}

Write-Host "Synced Agent Skill package from skills/after-the-oracle"
