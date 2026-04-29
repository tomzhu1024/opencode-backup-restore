#!/bin/bash
set -euo pipefail
tar -czf opencode-backup.tar.gz -C "${HOME}" --exclude='._*' \
    .config/opencode/opencode.json \
    .config/opencode/opencode.jsonc \
    .config/opencode/AGENTS.md \
    .config/opencode/agents \
    .config/opencode/commands \
    .config/opencode/skills \
    .local/share/opencode/auth.json \
    .local/share/opencode/mcp-auth.json \
    2>/dev/null
