#!/bin/sh

currentDirectory=$(pwd)

mkdir -p "$HOME/.oh-my-zsh/themes"

ln -s "$currentDirectory/.shell" "$HOME/.shell"
ln -s "$currentDirectory/.zshrc" "$HOME/.zshrc"
ln -s "$currentDirectory/.npmrc" "$HOME/.npmrc"
ln -s "$currentDirectory/.gitconfig" "$HOME/.gitconfig"
ln -s "$currentDirectory/.oh-my-zsh/themes/devnetik.zsh-theme" "$HOME/.oh-my-zsh/themes/devnetik.zsh-theme"
ln -s "$currentDirectory/.conkyrc" "$HOME/.conkyrc"
ln -s "$currentDirectory/.conky.d" "$HOME/.conky.d"
