#!/usr/bin/env bash
#
# install.sh — Install anti-slop-writer skill for your agent harness
#
# Usage:
#   bash install.sh                    # Interactive install
#   bash install.sh --hermes           # Install to ~/.hermes/skills/
#   bash install.sh --claude-code      # Install as Claude Code plugin
#   bash install.sh --manual /path     # Copy to custom path
#

set -euo pipefail

SRC_DIR="$(cd "$(dirname "$0")" && pwd)"

show_help() {
  cat <<EOF
anti-slop-writer — install script

Options:
  --hermes        Install into ~/.hermes/skills/ (Hermes Agent)
  --claude-code   Install as Claude Code plugin
  --manual PATH   Copy SKILL.md + references to PATH
  --help          Show this message

EOF
  exit 0
}

install_hermes() {
  TARGET="${HERMES_SKILLS_DIR:-$HOME/.hermes/skills/creative/anti-slop-writer}"
  echo "→ Installing to Hermes Agent: $TARGET"
  mkdir -p "$TARGET/references"
  cp "$SRC_DIR/SKILL.md" "$TARGET/"
  cp "$SRC_DIR/references/"*.md "$TARGET/references/" 2>/dev/null || true
  echo "✓ Installed. Load with: skill_view(name='anti-slop-writer')"
}

install_claude_code() {
  TARGET="${CLAUDE_CODE_PLUGINS_DIR:-$HOME/.claude/plugins/anti-slop-writer}"
  echo "→ Installing as Claude Code plugin: $TARGET"
  mkdir -p "$TARGET/references"
  cp "$SRC_DIR/SKILL.md" "$TARGET/"
  cp "$SRC_DIR/references/"*.md "$TARGET/references/" 2>/dev/null || true
  echo "✓ Installed. Enable with: /plugin enable anti-slop-writer"
}

install_manual() {
  TARGET="$1"
  echo "→ Copying to: $TARGET"
  mkdir -p "$TARGET/references"
  cp "$SRC_DIR/SKILL.md" "$TARGET/"
  cp "$SRC_DIR/references/"*.md "$TARGET/references/" 2>/dev/null || true
  echo "✓ Copied. Point your agent harness to this directory."
}

if [ $# -eq 0 ]; then
  echo "anti-slop-writer — Installer"
  echo ""
  echo "Where should this skill be installed?"
  echo "  1) Hermes Agent  (~/.hermes/skills/)"
  echo "  2) Claude Code   (~/.claude/plugins/)"
  echo "  3) Manual path"
  echo "  4) Help"
  read -rp "Choice [1-4]: " CHOICE
  case "$CHOICE" in
    1) install_hermes ;;
    2) install_claude_code ;;
    3) read -rp "Target path: " MPATH; install_manual "$MPATH" ;;
    *) show_help ;;
  esac
else
  case "$1" in
    --hermes) install_hermes ;;
    --claude-code) install_claude_code ;;
    --manual) install_manual "$2" ;;
    --help|-h) show_help ;;
    *) echo "Unknown option: $1"; show_help ;;
  esac
fi
