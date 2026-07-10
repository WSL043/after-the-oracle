# Contributing

After the Oracle is about practical judgment under imperfect AI assistance. Contributions should make the system easier to use, easier to verify, or easier to port across tools.

Good contributions include:

- clearer examples,
- better decision brief templates,
- tool-specific adapter improvements,
- translations that preserve nuance rather than literal wording,
- evidence-backed compatibility updates.

Before opening a pull request:

1. Check whether your change affects the core meaning of the skill.
2. Update the relevant README or docs file.
3. Verify compatibility claims against official documentation.
4. Include the strongest objection to your change in the PR description.
5. Run `powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify-release.ps1`.
6. For core behavior changes, forward-test the cases in `evals/core-cases.md` from a fresh context and report failures as well as passes.

Avoid adding broad motivational language, unverified tool support claims, or model-specific promises that may go stale quickly.

