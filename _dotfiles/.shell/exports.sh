export LANG=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

export DEV_HOME="$HOME/development"
export REACT_EDITOR=code
export NVM_DIR="$HOME/.nvm"

export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

export MAKEFLAGS="-j8"

export PATH="$PATH:$HOME/.local/bin:$HOME/.yarn/bin"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/development/projects

if [ -f ~/.credentials.sh ]; then
    source ~/.credentials.sh
fi
