# Decision Document: After the Oracle

Last updated: 2026-07-03

## North Star

Publish a Skill that helps people keep human judgment in charge of AI-assisted work when the strongest model is unavailable.

Success means a visitor understands the story in the first screen, remembers the name, sees how to install the Skill, and understands that the final judgment remains human.

## Non-Goals

- Do not promise that weak models become objectively reliable.
- Do not turn this into a generic prompt collection.
- Do not claim every agent tool behaves the same way.
- Keep reuse terms simple and permissive.

## Active Decisions

### D-001 2026-07-03 Codex

Decision: Rename the project from `judgment-harness` to `after-the-oracle`.

Reason: The old name was accurate but did not carry emotional force. `After the Oracle` names the moment the Skill is built for: the strongest model is no longer available, but the human still has to navigate.

Expires if: A direct naming conflict appears in the intended publication channel.

### D-002 2026-07-03 Codex

Decision: Use localized display names instead of literal translations.

Reason: The project needs to resonate in each language, not merely preserve terminology.

English: `After the Oracle`

Japanese: `神託なき羅針盤`

Simplified Chinese: `神谕之后的罗盘`

### D-003 2026-07-03 Codex

Decision: Use a cinematic navigation image as the README hero.

Reason: The project needs an immediate emotional signal. The compass, storm, laptop, and lighthouse communicate the story faster than an architecture diagram.

### D-004 2026-07-03 Codex

Decision: Release the project under the MIT License.

Reason: The owner wants the Skill to be freely usable. MIT is the most familiar permissive default for GitHub users and works for both instruction files and future scripts.

### D-005 2026-07-03 Codex

Decision: Include Skill copies in `.github/skills/`, `.agents/skills/`, and `.windsurf/skills/` while keeping `skills/after-the-oracle/` as the canonical source.

Reason: Different agent tools discover project skills from different directories. Public readers should not need to infer or manually reorganize the package before trying it.

Expires if: The repository adopts a build script that generates these copies from the canonical source.

## Judgment Principles

### P-001

Public release is high-stakes: verify current claims, keep compatibility claims narrow, and leave legal/reuse decisions for the owner.

### P-002

The README should make the reader feel the problem before it explains the mechanism.

### P-003

Tool support should be expressed as adapters and usage notes, not as a claim that every tool supports the exact same loading model.

## Rejected Options

### R-001 Judgment Harness

Rejected because it sounded like a mechanism, not a story.

### R-002 Complete Judgment System

Rejected because it was too broad and doctrinal for public discovery.

### R-003 Human Compass

Rejected because it was warmer but less tied to the AI/oracle premise.
