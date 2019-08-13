#!/bin/sh

mkdir -p "$HOME/.oh-my-zsh/themes"

ln -s "$PWD/.shell" "$HOME/.shell"
ln -s "$PWD/.profile" "$HOME/.profile"
ln -s "$PWD/.zshrc" "$HOME/.zshrc"
ln -s "$PWD/.npmrc" "$HOME/.npmrc"
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/.oh-my-zsh/themes/devnetik.zsh-theme" "$HOME/.oh-my-zsh/themes/devnetik.zsh-theme"
ln -s "$PWD/.conkyrc" "$HOME/.conkyrc"
ln -s "$PWD/.conky.d" "$HOME/.conky.d"
