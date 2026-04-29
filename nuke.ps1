$ErrorActionPreference = 'Stop'
Remove-Item -Path "$HOME/.config/opencode",
    "$HOME/.cache/opencode",
    "$HOME/.local/state/opencode",
    "$HOME/.local/share/opencode",
    "$HOME/.local/share/opentui" -Recurse -Force -ErrorAction SilentlyContinue
