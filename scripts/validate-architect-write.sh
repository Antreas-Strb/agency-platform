#!/bin/bash
# Backstop for agent-architect: block writes into live config directories.
# Enable by uncommenting the hooks block in .claude/agents/agent-architect.md
# and running: chmod +x ./scripts/validate-architect-write.sh

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

if [ -z "$FILE_PATH" ]; then
  exit 0
fi

case "$FILE_PATH" in
  *.claude/agents/*|*.claude/skills/*)
    echo "Blocked: drafts go to .claude/drafts/ only. Activation is the user's move." >&2
    exit 2
    ;;
esac

exit 0
