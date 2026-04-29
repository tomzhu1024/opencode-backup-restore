#!/bin/bash
set -euo pipefail
find "${HOME}/.config/opencode" -mindepth 1 -maxdepth 1 \
    ! -name 'opencode.json' \
    ! -name 'opencode.jsonc' \
    ! -name 'AGENTS.md' \
    ! -name 'agents' \
    ! -name 'commands' \
    ! -name 'skills' \
    -exec rm -rf {} \;
find "${HOME}/.cache/opencode" -mindepth 1 -maxdepth 1 \
    -exec rm -rf {} \;
find "${HOME}/.local/state/opencode" -mindepth 1 -maxdepth 1 \
    -exec rm -rf {} \;
find "${HOME}/.local/share/opencode" -mindepth 1 -maxdepth 1 \
    ! -name 'auth.json' \
    ! -name 'mcp-auth.json' \
    -exec rm -rf {} \;
find "${HOME}/.local/share/opentui" -mindepth 1 -maxdepth 1 \
    -exec rm -rf {} \;
