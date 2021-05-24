#!/bin/bash

export ZSH="$HOME/.oh-my-zsh"

export HISTSIZE=LONG_MAX
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

setopt hist_ignore_space
setopt hist_ignore_all_dups

ZSH_CUSTOM="$HOME/.zsh"
ZSH_THEME="malura"
ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_UNICODE=true

ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

COMPLETION_WAITING_DOTS="true"
plugins=(
  archlinux
  git github gas
  node nvm npm
  pip python virtualenv
  docker
  debian
  extract
  history
  rsync
  tmux
  fzf
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
  zsh-completions
)
autoload -U compinit && compinit

source ~/.functions.sh
source ~/.exports.sh
source ~/.alias.sh
source ~/.setup.sh
source ~/.profile

source $ZSH/oh-my-zsh.sh
