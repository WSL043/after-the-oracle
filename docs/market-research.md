# Market Research

Date: 2026-07-03

## Executive Takeaway

The market has moved from one-off prompts toward persistent, portable agent context: `SKILL.md`, `AGENTS.md`, rules files, custom instructions, workflows, and convention files. The opportunity for this project is not to be another prompt library. It should be positioned as a human-centered judgment layer that works across this ecosystem.

## Ecosystem Signals

Agent Skills are becoming a cross-tool format. The Agent Skills specification defines a skill as a directory containing `SKILL.md`, with required `name` and `description` frontmatter and optional scripts, references, and assets. It also emphasizes progressive disclosure, where only metadata is loaded first and full instructions are loaded when relevant. Source: [Agent Skills specification](https://agentskills.io/specification).

OpenAI Codex supports Agent Skills in the CLI, IDE extension, and app, and describes skills as reusable workflows packaged in directories with `SKILL.md`. Codex also uses `AGENTS.md` for project instructions. Sources: [Codex Agent Skills](https://developers.openai.com/codex/skills), [Codex AGENTS.md](https://developers.openai.com/codex/guides/agents-md).

Claude Code and Claude Platform support custom Skills. Claude Code describes skills as `SKILL.md` files that load only when used, and Claude Platform describes Custom Skills as a way to package domain expertise and organizational knowledge across Claude products. Sources: [Claude Code skills](https://code.claude.com/docs/en/skills), [Claude Platform Agent Skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview).

GitHub Copilot and VS Code now support both custom instructions and Agent Skills. GitHub documents repository-wide custom instructions in `.github/copilot-instructions.md` and path-specific instructions under `.github/instructions`. VS Code documents Agent Skills as a portable format that can work across GitHub Copilot in VS Code, Copilot CLI, and Copilot cloud agent. Sources: [GitHub Copilot repository instructions](https://docs.github.com/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot), [VS Code Agent Skills](https://code.visualstudio.com/docs/agent-customization/agent-skills).

Cascade, Devin Desktop, and Windsurf support skills, rules, workflows, and `AGENTS.md` style guidance. Their docs distinguish Skills for multi-step procedures with supporting files, Rules for behavioral guidance, and Workflows for manual slash-command procedures. Sources: [Cascade Skills](https://docs.windsurf.com/windsurf/cascade/skills), [Cascade AGENTS.md](https://docs.windsurf.com/windsurf/cascade/agents-md), [Cascade Workflows](https://docs.windsurf.com/windsurf/cascade/workflows).

For this public release, the compatibility surface is intentionally focused on better-known agent tools: Codex, Claude Code, GitHub Copilot / VS Code, Cursor, Windsurf / Cascade, and Devin. Other tools can still consume the standard `SKILL.md` format manually.

## Naming Landscape

The phrase "decision harness" is already used in enterprise AI and experimentation contexts. FeatBit describes a release decision harness as a set of `SKILL.md` files with state, trigger routing, control gates, and skill decomposition. ElixrData positions Context OS as "The Decision Harness for Enterprise AI." ObjectiveAI uses "collective judgment harness" for an agent swarm decision product. Sources: [FeatBit release decision harness](https://www.featbit.co/release-decision-agent/release-decision-harness), [ElixrData Context OS](https://www.elixirdata.co/), [ObjectiveAI on PyPI](https://pypi.org/project/objectiveai/).

That makes `Decision Harness` less distinctive. `After the Oracle` deliberately leaves the crowded infrastructure vocabulary and gives the project a story: what remains after the trusted model is gone.

## Positioning Gap

Most visible artifacts in this space optimize one of these:

- tool-specific rules,
- prompt reuse,
- coding conventions,
- agent workflow automation,
- enterprise governance.

This project's distinct angle is:

> a portable judgment discipline for individual humans using AI after the strongest model is unavailable.

That is emotionally stronger than "better prompts" and more practical than "AI safety" as an abstract claim.

## Recommended Public Message

Lead with the lived problem:

> The oracle may leave. The compass must stay in your hands.

Then show the mechanism:

- execution layer,
- verification layer,
- human judgment layer,
- decision records,
- escalation rules,
- weak-model amplification.

This order matters. The README should make the user feel seen before it asks them to understand the architecture.

