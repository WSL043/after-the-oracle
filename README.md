<p align="center">
  <img src="assets/after-the-oracle-hero.png" alt="A compass, a laptop, and a lighthouse after a storm" width="100%">
</p>

<h1 align="center">After the Oracle</h1>

<p align="center">
  <strong>A survival skill for AI work when the strongest model is no longer in the room.</strong>
</p>

<p align="center">
  English | <a href="README.ja.md">日本語</a> | <a href="README.zh-CN.md">中文</a>
</p>

<p align="center">
  <img alt="Format: Agent Skill" src="https://img.shields.io/badge/format-Agent%20Skill-0E7C7B">
  <img alt="Type: instruction only" src="https://img.shields.io/badge/type-instruction--only-111827">
  <img alt="Human judgment" src="https://img.shields.io/badge/final%20judgment-human-E6A23C">
</p>

## When The Oracle Leaves

There is a particular kind of silence that happens after the best model disappears.

The answer used to arrive with weight. You could ask the expensive model, the frontier model, the one that saw the shape of the problem faster than you did. Then the budget runs out, the quota closes, the tool changes, or the model you trusted is no longer there.

What remains is not useless. You still have cheaper models. You still have agents. You still have time, logs, tests, notes, and your own unease when something feels wrong.

But you need a way to turn those pieces into judgment.

**After the Oracle** is that way.

It is a portable Skill for the day you cannot outsource judgment to a stronger mind. It gives agents a procedure for execution and evidence-based verification, while keeping consequential decisions with the human.

> The oracle may leave.  
> The compass must stay in your hands.

## At A Glance

| When you feel this | Use After the Oracle to | The agent should produce |
|---|---|---|
| "The model can help, but I should not trust it alone." | Separate execution from verification. | A draft, an independent check, and remaining risks. |
| "This action is public, expensive, or hard to undo." | Force a human judgment point. | A decision brief with options, costs, and rollback notes. |
| "The answer sounds smooth, but something feels off." | Run non-expert inspection. | Divergence checks, reversal tests, and plain-language explanations. |
| "The project is getting too long for chat memory." | Externalize state. | A decision record, assumptions, and next actions. |

## The Shape Of The System

<p align="center">
  <img src="assets/system-map.png" alt="Execute, verify, judge, and record workflow" width="100%">
</p>

After the Oracle gives you:

- a canonical Agent Skill at `skills/after-the-oracle/SKILL.md`,
- ready-to-discover copies under `.github/skills/`, `.agents/skills/`, and `.windsurf/skills/`,
- a three-layer operating model for AI-assisted work,
- decision briefs for moments where the agent should stop,
- inspection methods a non-expert can actually use,
- weak-model amplification patterns such as planning passes, adversarial review, role separation, and state externalization,
- adapters for major agent tools: Codex, Claude Code, GitHub Copilot / VS Code, Cursor, Windsurf / Cascade, and Devin.

## Quick Start

Clone the repository:

```powershell
git clone https://github.com/WSL043/after-the-oracle.git
cd after-the-oracle
```

Project-level discovery works immediately in VS Code/Copilot and Windsurf through the included copies. For a personal installation, copy the entire package:

```powershell
# Codex
Copy-Item -Recurse skills\after-the-oracle "$HOME\.codex\skills\after-the-oracle"
# Claude Code
Copy-Item -Recurse skills\after-the-oracle "$HOME\.claude\skills\after-the-oracle"
```

| Client | Explicit invocation |
|---|---|
| Codex | `$after-the-oracle` |
| Claude Code | `/after-the-oracle` |
| VS Code / Copilot | `/after-the-oracle` |
| Windsurf / Cascade | `@after-the-oracle` |

Cursor and Devin use the repository adapters listed below rather than a shared invocation syntax.

Verification prompt:

```text
Use the after-the-oracle skill. Classify the risk of publishing a draft README,
then show the verification report you would produce before publication.
```

A correct response classifies the action, separates facts from assumptions, names observable checks, and identifies whether human approval is still required.

For tools that rely on persistent instruction files, use the adapters:

| Tool family | File in this repo |
|---|---|
| Codex and AGENTS.md-compatible agents | `AGENTS.md` |
| Claude Code | `skills/after-the-oracle/SKILL.md` and `CLAUDE.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| VS Code / Copilot Agent Skills | `.github/skills/after-the-oracle/SKILL.md` |
| VS Code / Copilot path instructions | `.github/instructions/after-the-oracle.instructions.md` |
| Cursor | `.cursor/rules/after-the-oracle.mdc` |
| Cascade / Windsurf skills | `.windsurf/skills/after-the-oracle/SKILL.md` |
| Cross-agent skill discovery | `.agents/skills/after-the-oracle/SKILL.md` |
| Devin CLI rules | `AGENTS.md` |

Read [docs/compatibility.md](docs/compatibility.md) for the current tool mapping and usage notes.

## Use It When

Use it when an AI-assisted task is public, irreversible, expensive to redo, emotionally loaded, strategically important, or long enough that chat memory will start lying to you.

Skip it for tiny reversible tasks. The system is not ceremony. It is a brake for the moments where a wrong direction costs more than a slow start.

## Repository Layout

```text
skills/after-the-oracle/SKILL.md      Canonical source Skill
.github/skills/after-the-oracle/      VS Code / Copilot skill copy
.agents/skills/after-the-oracle/      Cross-agent skill copy
.windsurf/skills/after-the-oracle/    Cascade / Windsurf skill copy
scripts/sync-skill-copies.ps1         Refreshes tool-specific Skill copies
docs/market-research.md              Ecosystem notes and positioning
docs/naming.md                       Naming rationale in English, Japanese, Chinese
docs/compatibility.md                Tool adapters and installation guidance
docs/publishing-checklist.md         GitHub release checklist
templates/PROJECT_DECISION_RECORD.md  Project decision record
assets/                             README visuals
```

## What This Is Not

This is not a prompt pack. It is not a claim that weaker models become wise. It is not another promise that agents can decide everything for you.

The model can draft. The model can verify. The model can argue against itself.

The final judgment remains human.

## Copy/Paste Samples

| Situation | Say this to the agent | Good output shape |
|---|---|---|
| Planning a release | `Use After the Oracle. Plan first, do not execute yet.` | Plan, assumptions, risks, verification path. |
| Reviewing an AI answer | `Use After the Oracle to verify this answer adversarially.` | Failure modes, uncertain claims, checks to run. |
| Deciding whether to publish | `Prepare a judgment brief before publication.` | Options, recommendation, reversibility, final human question. |
| Continuing a long project | `Update the decision record and continue from it.` | Current state, decisions used, next actions. |

## License

MIT. You can use, copy, modify, publish, and redistribute this project freely under the terms in [LICENSE](LICENSE). See [NOTICE.md](NOTICE.md) for content and asset provenance.

