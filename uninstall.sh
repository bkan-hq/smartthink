#!/usr/bin/env bash
set -euo pipefail

SKILL_TARGET="$HOME/.claude/skills/smartthink"

echo "SmartThink Uninstaller"
echo "======================"
echo ""

# Remove symlink
if [ -L "$SKILL_TARGET" ]; then
  rm "$SKILL_TARGET"
  echo "Symlink removed: $SKILL_TARGET"
elif [ -d "$SKILL_TARGET" ]; then
  echo "WARNING: $SKILL_TARGET is a directory, not a symlink. Skipping."
else
  echo "Symlink not found: $SKILL_TARGET (already removed?)"
fi

echo ""
echo "Uninstall complete."
echo "Your evolution state and briefs are preserved in the repo's skill/.data/ directory."
