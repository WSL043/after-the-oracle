<p align="center">
  <img src="assets/after-the-oracle-hero.png" alt="嵐の後の羅針盤、ラップトップ、灯台" width="100%">
</p>

<h1 align="center">神託なき羅針盤</h1>

<p align="center">
  <strong>最強モデルがいない日に、人間の判断を失わないためのSkill。</strong>
</p>

<p align="center">
  <a href="README.md">English</a> | 日本語 | <a href="README.zh-CN.md">中文</a>
</p>

## 神託が消えたあとに

最強のモデルに聞けた時期があった。

迷ったとき、最後に投げればよかった。高いけれど、重みのある答えを返してくれるモデル。こちらがまだ言葉にできていない問題の形まで、先に見てしまうような相手。

でも、その神託はいつも手元にあるわけではない。

予算は尽きる。無料枠は閉じる。レート制限は来る。ツールは変わる。昨日まで頼れた判断層が、今日はいない。

それでも、何も残らないわけではない。

安いモデルはある。エージェントはある。ログも、テストも、決定文書も、自分の中の「何かおかしい」という違和感も残っている。

必要なのは、それらを判断に変える仕組みだ。

**神託なき羅針盤**は、そのためのSkillです。

弱いモデルを強いモデルだと思い込ませるものではありません。弱いモデルを実行層と検証層に分け、人間が最後の判断層に立ち続けるための運用体系です。

> 神託はいなくなる。  
> それでも羅針盤は、あなたの手に残せる。

## 仕組み

```mermaid
flowchart TB
    E["実行層<br/>安価モデルが作る、調べる、書く"]
    V["検証層<br/>別文脈、敵対レビュー、一次情報確認"]
    H["判断層<br/>人間、判断ブリーフ、エスカレーション"]
    R["決定文書<br/>モデルが忘れることをプロジェクトが覚える"]
    E --> V --> H
    H --> R
    R --> E
```

入っているもの:

- `skills/after-the-oracle/SKILL.md` にある標準Agent Skill
- `.github/skills/`、`.agents/skills/`、`.windsurf/skills/` に置いた検出用コピー
- 実行層、検証層、判断層の三層モデル
- AIが止まり、人間に判断を返すための判断ブリーフ
- 専門知識なしでAI出力の誤りを見つける検品術
- 安価なモデルの実効性能を引き上げる技法
- Codex、Claude Code、GitHub Copilot / VS Code、Cursor、Windsurf / Cascade、Devin向けの導入ファイル

## 使い方

中心になるファイル:

```text
skills/after-the-oracle/SKILL.md
```

Agent Skills対応ツールでは、各ツールの検出パスにあるコピーを使うか、`skills/after-the-oracle/` をそのツールのskillsディレクトリへコピーしてください。

その他のツールでは、各アダプタを使います。

| ツール系統 | このリポジトリのファイル |
|---|---|
| Codex / AGENTS.md対応エージェント | `AGENTS.md` |
| Claude Code | `skills/after-the-oracle/SKILL.md` と `CLAUDE.md` |
| GitHub Copilot | `.github/copilot-instructions.md` |
| VS Code / Copilot Agent Skills | `.github/skills/after-the-oracle/SKILL.md` |
| VS Code / Copilot path instructions | `.github/instructions/after-the-oracle.instructions.md` |
| Cursor | `.cursor/rules/after-the-oracle.mdc` |
| Cascade / Windsurf skills | `.windsurf/skills/after-the-oracle/SKILL.md` |
| クロスエージェントskill検出 | `.agents/skills/after-the-oracle/SKILL.md` |
| Devin CLI rules | `AGENTS.md` |

詳細は [docs/compatibility.md](docs/compatibility.md) を参照してください。

## いつ使うか

公開、削除、契約、送信、課金、セキュリティ、長期プロジェクト、あるいは「このまま進めると取り返しがつかないかもしれない」と感じる作業で使います。

すぐ戻せる小さな作業には不要です。これは儀式ではありません。方向を間違えるコストが高い場面だけ、意図的に減速するための道具です。

## これは何ではないか

これはプロンプト集ではありません。弱いモデルが賢くなったと信じるための言い訳でもありません。AIがすべて決めてくれるという約束でもありません。

モデルは下書きできる。検証できる。反論も作れる。

最後に選ぶのは、人間です。

