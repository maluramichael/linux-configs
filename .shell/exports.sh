export LANG=en_US.UTF-8
export DEV_HOME="$HOME/development"
export REACT_EDITOR=code
export NVM_DIR="$HOME/.nvm"

export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

export PATH="$PATH:$HOME/.local/bin:$HOME/.yarn/bin"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/development/projects

if [ -f ~/.credentials.sh ]; then
    source ~/.credentials.sh
fi
