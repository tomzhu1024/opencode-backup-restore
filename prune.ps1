$ErrorActionPreference = 'Stop'
Get-ChildItem -Path "$HOME/.config/opencode" -Force -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -notin @(
        'opencode.json'
        'opencode.jsonc'
        'AGENTS.md'
        'agents'
        'commands'
        'skills'
    ) } |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Path "$HOME/.cache/opencode" -Force -ErrorAction SilentlyContinue |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Path "$HOME/.local/state/opencode" -Force -ErrorAction SilentlyContinue |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Path "$HOME/.local/share/opencode" -Force -ErrorAction SilentlyContinue |
    Where-Object { $_.Name -notin @(
        'auth.json'
        'mcp-auth.json'
    ) } |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Path "$HOME/.local/share/opentui" -Force -ErrorAction SilentlyContinue |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
