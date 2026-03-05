#!/bin/bash
SHARED=".ai-tooling"
# Root AGENTS.md — read by Copilot, Cursor, Windsurf, Codex, etc.
ln -sf "$SHARED/AGENTS.md" AGENTS.md
# Cline
ln -sf "$SHARED/AGENTS.md" .clinerules
# Claude Code skills
mkdir -p .claude/skills
for skill in "$SHARED"/skills/*/; do
  name=$(basename "$skill")
  ln -sf "../../$SHARED/skills/$name" ".claude/skills/$name"
done
# Copilot skills
mkdir -p .github/skills
for skill in "$SHARED"/skills/*/; do
  name=$(basename "$skill")
  ln -sf "../../$SHARED/skills/$name" ".github/skills/$name"
done
