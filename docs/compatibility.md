# Compatibility

Date checked: 2026-07-03

This repository uses Agent Skills as the canonical package format and includes adapter files for tools that use persistent instruction files instead of direct skill loading.

## Canonical Skill

```text
skills/after-the-oracle/SKILL.md
```

The parent directory name matches the frontmatter `name` field, which is required by the Agent Skills specification.

This repository also includes copies in common project discovery paths:

```text
.github/skills/after-the-oracle/SKILL.md
.agents/skills/after-the-oracle/SKILL.md
.windsurf/skills/after-the-oracle/SKILL.md
```

## Tool Matrix

| Tool | Best entry point | Notes |
|---|---|---|
| OpenAI Codex | `skills/after-the-oracle/SKILL.md`, `AGENTS.md` | Codex supports Agent Skills and reads `AGENTS.md` project guidance. |
| Claude Code | `skills/after-the-oracle/SKILL.md`, `CLAUDE.md` | Install the skill in Claude Code's skill location or read it directly. Claude Code can invoke skills by name when installed. |
| Claude Platform | `skills/after-the-oracle/SKILL.md` | Custom Skills package domain knowledge for Claude products. |
| GitHub Copilot on GitHub | `.github/copilot-instructions.md` | Repository-wide custom instructions. |
| VS Code Copilot Agent Skills | `.github/skills/after-the-oracle/SKILL.md` | VS Code discovers project skills under `.github/skills/`, `.claude/skills/`, and `.agents/skills/`. |
| VS Code path instructions | `.github/instructions/after-the-oracle.instructions.md` | Useful when Copilot custom instructions are preferred. |
| Cursor | `.cursor/rules/after-the-oracle.mdc` | Rules file adapter. Keep it concise and point to the canonical Skill. |
| Cascade / Windsurf skills | `.windsurf/skills/after-the-oracle/SKILL.md`, `.agents/skills/after-the-oracle/SKILL.md` | Cascade/Devin Desktop discovers workspace skills in `.windsurf/skills/` and cross-agent skills in `.agents/skills/`. |
| Devin CLI rules | `AGENTS.md` | Devin CLI recommends `AGENTS.md` for project rules and can import Cursor/Windsurf/Claude rule formats. |
| Generic chat model | Copy the Quick Start section from `skills/after-the-oracle/SKILL.md` | Use when no file-based instruction system exists. |

## Sources

- [Agent Skills specification](https://agentskills.io/specification)
- [OpenAI Codex Agent Skills](https://developers.openai.com/codex/skills)
- [OpenAI Codex AGENTS.md](https://developers.openai.com/codex/guides/agents-md)
- [Claude Code skills](https://code.claude.com/docs/en/skills)
- [Claude Platform Agent Skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
- [GitHub Copilot repository custom instructions](https://docs.github.com/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot)
- [VS Code Agent Skills](https://code.visualstudio.com/docs/agent-customization/agent-skills)
- [Cursor Rules](https://cursor.com/docs/rules)
- [Cascade Skills](https://docs.windsurf.com/windsurf/cascade/skills)
- [Devin Rules and AGENTS.md](https://docs.devin.ai/cli/extensibility/rules)

## Maintenance Rule

Compatibility claims rot quickly. Before a tagged release, re-check the official docs for each tool and update this file with the check date.

