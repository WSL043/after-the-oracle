$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills/after-the-oracle/SKILL.md"
$targets = @(
    ".github/skills/after-the-oracle/SKILL.md",
    ".agents/skills/after-the-oracle/SKILL.md",
    ".windsurf/skills/after-the-oracle/SKILL.md"
)

foreach ($targetRel in $targets) {
    $target = Join-Path $repoRoot $targetRel
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
    Copy-Item -LiteralPath $source -Destination $target -Force
}

Write-Host "Synced Agent Skill copies from skills/after-the-oracle/SKILL.md"
