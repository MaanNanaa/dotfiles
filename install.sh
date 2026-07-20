#!/usr/bin/env bash

set -e

DOTFILES="$HOME/dotfiles"

echo "Installing VS Code settings..."
mkdir -p "$HOME/Library/Application Support/Code/User"
ln -sf "$DOTFILES/vscode/settings.json" \
       "$HOME/Library/Application Support/Code/User/settings.json"

echo "Installing IdeaVim..."
ln -sf "$DOTFILES/ideavim/ideavimrc" \
       "$HOME/.ideavimrc"

echo "✅ Done!"