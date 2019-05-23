# determine local IP address
ips () { ifconfig | grep "inet " | awk '{ print $2 }' | grep -v '127.0.0.1'}
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
mans () { man $1 | grep -iC2 --color=always $2 | less }

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
  if [ -f $1 ] ; then
    case $1 in
    *.tar.bz2)   tar xjf $1     ;;
    *.tar.gz)    tar xzf $1     ;;
    *.bz2)       bunzip2 $1     ;;
    *.rar)       unrar e $1     ;;
    *.gz)        gunzip $1      ;;
    *.tar)       tar xf $1      ;;
    *.tbz2)      tar xjf $1     ;;
    *.tgz)       tar xzf $1     ;;
    *.zip)       unzip $1       ;;
    *.Z)         uncompress $1  ;;
    *.7z)        7z x $1        ;;
    *)     echo "'$1' cannot be extracted via extract()" ;;
      esac
    else
      echo "'$1' is not a valid file"
    fi
}