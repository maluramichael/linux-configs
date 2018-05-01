export LANG=en_US.UTF-8
export DEV_HOME="$HOME/development"
export REACT_EDITOR=code
export NVM_DIR="$HOME/.nvm"

# android
#export ANDROID_HOME="$HOME/Library/Android/sdk"
#export ANDROID_BUILD_TOOLS="$ANDROID_HOME/build-tools/$(ls -t $ANDROID_HOME/build-tools | tail -1)"
#export ANDROID_KEYSTORES="$DEV_HOME/keystores"
#export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_BUILD_TOOLS"

export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"

if [ -f ~/.credentials.sh ]; then
    source ~/.credentials.sh
fi
