#!/usr/bin/env bash

set -e

OTFILES="$HOME/dotfiles"
VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"

echo "Installing VS Code settings..."
mkdir -p "$VSCODE_USER_DIR"

ln -sf "$DOTFILES/vscode/settings.json" \
       "$VSCODE_USER_DIR/settings.json"

echo "Installing VS Code keybindings..."
ln -sf "$DOTFILES/vscode/keybindings.json" \
       "$VSCODE_USER_DIR/keybindings.json"

echo "Installing IdeaVim..."
ln -sf "$DOTFILES/ideavim/.ideavimrc" \
       "$HOME/.ideavimrc"

echo "Installing Git config..."

ln -sf "$DOTFILES/git/.gitconfig" \
       "$HOME/.gitconfig"

echo "✅ Done!"
