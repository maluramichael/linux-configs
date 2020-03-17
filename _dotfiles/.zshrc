export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="alanpeabody"
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_UNICODE=true

COMPLETION_WAITING_DOTS="true"
plugins=(
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
 zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting zsh-completions
)
autoload -U compinit && compinit

source ~/.profile
source $ZSH/oh-my-zsh.sh

source ~/.shell/exports.sh
source ~/.shell/alias.sh
source ~/.shell/functions.sh
source ~/.shell/setup.sh
