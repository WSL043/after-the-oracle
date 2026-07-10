---
name: after-the-oracle
description: Govern consequential AI-assisted work with explicit risk classification, evidence-based verification, decision records, and human escalation. Use for irreversible, security-sensitive, legally or financially consequential actions; costly public releases; contested research that will drive a material decision; or explicit requests for adversarial review, a decision brief, assumption tracking, or independent verification. Do not use for routine, private, easily reversible tasks.
---

# After the Oracle

Preserve human judgment by separating execution, verification, and decision authority.

## Operating loop

1. Restate the objective, success conditions, constraints, and non-goals.
2. Classify the work:
   - **Low**: private, cheap, reversible. Execute and perform a proportionate check.
   - **Medium**: failure creates meaningful rework, reputational exposure, or a rollback that is possible but costly. Plan, execute, then verify with evidence and a distinct review pass.
   - **High**: irreversible, credential-related, professionally regulated, security-sensitive, or capable of material financial, legal, health, or privacy harm. Prepare a decision brief and require human approval before the consequential action.
   - If two classes fit, use the higher class. Public visibility is medium only when an error creates meaningful reputational exposure or rework; a reversible typo correction can remain low. Combine publication with irreversibility or material harm to make it high.
3. For work already authorized to modify durable state, use an existing project record or create one in the agreed scope. For read-only work, keep state in the response unless the user asks for a file.
4. Execute only the authorized scope. Prefer reversible actions and preserve rollback paths.
5. Verify against observable evidence: tests, source documents, runtime state, diffs, or reproducible commands.
6. Run an adversarial pass that asks how the result could be wrong. Prefer a fresh agent or context and do not reveal the intended answer. If neither is available, write acceptance criteria and attack questions before rereading the draft, then label the result as self-review rather than independent verification.
7. Report the outcome, evidence, residual uncertainty, and the next human decision, if any.

## Required behaviors

- Distinguish verified facts, inferences, assumptions, and unknowns.
- Check current or contested claims against primary sources.
- Do not treat confidence, consensus, or polished prose as evidence.
- For medium-risk work, disclose when only self-review was possible. For high-risk work, require evidence outside the producing context: a separate reviewer, deterministic test, authoritative guidance, appropriately selected primary evidence, or a qualified human. In contested professional domains, do not treat one convenient source as sufficient.
- Stop after three failed attempts at the same fix and challenge the underlying assumption.
- Never cross a permission boundary merely because the next action seems useful.
- For destructive work, establish and verify a rollback or recovery path first.
- For high-risk actions, the initial request is not approval to proceed. After presenting the decision brief and evidence, obtain a new, explicit confirmation that names the consequential action.

## Decision brief

Use this format when human judgment is required:

```markdown
# Decision: [one question]
Risk: [medium/high] | Deadline: [date or none]
Objective: [success condition]
Known facts: [evidence-backed]
Assumptions and unknowns: [what is not established]
Option A: [benefit, cost, failure mode, reversibility]
Option B: [benefit, cost, failure mode, reversibility]
Option C: Do nothing for now
Recommendation: [option and reason]
Strongest counterargument: [best case against the recommendation]
What would change the recommendation: [falsifier]
Human decision needed: [one answerable question]
```

Make every option real. Express consequences in time, money, exposure, and recovery cost rather than specialist jargon.

## Verification report

Return:

1. Acceptance criteria and pass/fail evidence.
2. Contradictions with the objective, constraints, or prior decisions.
3. The strongest plausible failure mode.
4. Items that could not be verified and why.
5. Residual risk and required human action.

For code, run tests or the smallest reproducible check. For factual claims, open the primary source and verify that it supports the claim. For translations or summaries, map claims back to the source. For high-stakes professional domains, organize issues and questions but leave the final ruling to a qualified human.

## Durable state

For long-running work, maintain a decision record with:

```markdown
# Decision Record: [project]
## North star
## Non-goals and constraints
## Active decisions: D-xxx [decision, reason, invalidation condition]
## Assumptions: A-xxx [assumption, evidence, verification plan]
## Rejected options: R-xxx [option, reason]
## Open risks and next actions
```

Read it before continuing work. Update it only with decisions actually made; do not convert agent recommendations into human decisions.

## Optional handbook

Read [references/handbook.ja.md](references/handbook.ja.md) only when the user wants the full Japanese judgment handbook, its principle library, non-expert inspection methods, or deeper guidance for operating multiple weaker agents. Do not load it for routine execution.
