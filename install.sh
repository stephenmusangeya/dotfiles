#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
if ! git config --global --get-all include.path | grep -Fxq "$repo/gitconfig"; then
  git config --global --add include.path "$repo/gitconfig"
fi
# Use a quoted absolute path so installation also works in paths with spaces.
printf -v line 'source %q' "$repo/bashrc"
touch "$HOME/.bashrc"
if ! grep -Fxq "$line" "$HOME/.bashrc"; then
  cp -p "$HOME/.bashrc" "$HOME/.bashrc.before-dotfiles.$(date +%Y%m%d%H%M%S)"
  printf '\n%s\n' "$line" >> "$HOME/.bashrc"
fi
printf 'Dotfiles installed. Open a new shell to load aliases.\n'
