#!/bin/bash
set -euo pipefail
rm -rf \
    "${HOME}/.config/opencode" \
    "${HOME}/.cache/opencode" \
    "${HOME}/.local/state/opencode" \
    "${HOME}/.local/share/opencode" \
    "${HOME}/.local/share/opentui"
