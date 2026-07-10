$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$canonical = Join-Path $repoRoot "skills/after-the-oracle"
$copies = @(
    ".github/skills/after-the-oracle",
    ".agents/skills/after-the-oracle",
    ".windsurf/skills/after-the-oracle"
)

$required = @("SKILL.md", "agents/openai.yaml", "references/handbook.ja.md")
foreach ($relative in $required) {
    $source = Join-Path $canonical $relative
    if (-not (Test-Path -LiteralPath $source)) {
        throw "Missing canonical Skill file: $relative"
    }

    foreach ($copy in $copies) {
        $target = Join-Path (Join-Path $repoRoot $copy) $relative
        if (-not (Test-Path -LiteralPath $target)) {
            throw "Missing Skill copy file: $copy/$relative"
        }
        if ((Get-FileHash $source).Hash -ne (Get-FileHash $target).Hash) {
            throw "Stale Skill copy: $copy/$relative"
        }
    }
}

$skill = Get-Content -Raw (Join-Path $canonical "SKILL.md")
if ($skill -notmatch '(?s)^---\r?\nname: after-the-oracle\r?\ndescription: .+?\r?\n---') {
    throw "Invalid SKILL.md frontmatter"
}

$forbidden = @("Fable", "fifth fable")
foreach ($term in $forbidden) {
    $matches = Get-ChildItem $repoRoot -Recurse -File | Where-Object {
        $_.FullName -notmatch '[\\/]\.git([\\/]|$)' -and $_.FullName -ne $PSCommandPath
    } | Select-String -SimpleMatch $term -List
    if ($matches) {
        throw "Forbidden stale term found: $term"
    }
}

$handbook = Get-Content -Raw (Join-Path $canonical "references/handbook.ja.md")
if ($handbook -match '(?m)^.+Claude\s*$') {
    throw "Model-persona signature found in handbook"
}

Write-Host "Release verification passed."
