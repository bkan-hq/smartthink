#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd -P)"
SKILL_SOURCE="$SCRIPT_DIR/skill"
SKILL_TARGET="$HOME/.claude/skills/smartthink"

echo "SmartThink Installer"
echo "===================="
echo ""
echo "Source: $SKILL_SOURCE"
echo "Target: $SKILL_TARGET"
echo ""

# Check source exists
if [ ! -f "$SKILL_SOURCE/SKILL.md" ]; then
  echo "ERROR: SKILL.md not found in $SKILL_SOURCE"
  echo "Make sure you're running install.sh from the cloned smartthink repo."
  exit 1
fi

# Check Claude Code installation
if [ ! -d "$HOME/.claude" ]; then
  echo "WARNING: ~/.claude/ not found. Is Claude Code installed?"
  echo "Install Claude Code first: https://docs.anthropic.com/en/docs/claude-code"
fi

# Create parent directory
mkdir -p "$HOME/.claude/skills"

# Check if target already exists
if [ -L "$SKILL_TARGET" ]; then
  echo "Existing symlink found. Removing..."
  rm "$SKILL_TARGET"
elif [ -d "$SKILL_TARGET" ]; then
  echo "ERROR: $SKILL_TARGET exists as a directory (not a symlink)."
  echo "Please remove it manually and re-run install.sh."
  exit 1
fi

# Create symlink
ln -s "$SKILL_SOURCE" "$SKILL_TARGET"
echo "Symlink created: $SKILL_TARGET -> $SKILL_SOURCE"

echo ""
echo "Installation complete!"
echo ""
echo "Usage:"
echo "  In Claude Code, type: /smartthink <your topic>"
echo "  Example: /smartthink AI 스타트업 아이디어"
echo ""
echo "Modes:"
echo "  /smartthink <topic>          Deep analysis (full modules)"
echo "  /smartthink light <topic>    Light analysis (no modules)"
echo "  /smartthink search <topic>   Deep + web search"
