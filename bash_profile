export GOPATH=${HOME}/go
export PATH=$PATH:$GOPATH/bin
export KUBECONFIG="/Users/sshah23/.kube/config_kube.sbg-qbo-ppd.a.intuit.com"

RED='\[\e[1;31m\]'
BOLDYELLOW='\[\e[1;33m\]'
GREEN='\[\e[0;32m\]'
BLUE='\[\e[1;34m\]'
DARKBROWN='\[\e[1;33m\]'
DARKGRAY='\[\e[1;30m\]'
CUSTOMCOLORMIX='\[\e[1;30m\]'
DARKCUSTOMCOLORMIX='\[\e[1;32m\]'
LIGHTBLUE='\[\033[1;36m\]'
PURPLE='\[\e[1;35m\]' #git branch
GREEN='\[\e[0;32m\]'
PURPLE='\[\e[1;35m\]'
BLUE='\[\e[1;34m\]'
NC='\[\e[0m\]'

alias css='docker container ls'
alias img='docker images'
alias dclean='docker rmi -f $(docker images --filter "dangling=true")'
alias reload='source ~/.bash_profile'
alias cll="clear; ls -lAh"
alias ..="cd .."
alias ..2="cd ../../"
alias ..3="cd ../../../"
alias la="ls -la"
alias where="pwd"
alias h='history'
alias untar="tar -xvf"
alias ppath="echo $PATH | tr ':' '\n'"
alias ~='cd ~'

PS1="${LIGHTBLUE}\\u ${BOLDYELLOW}[\\W] ${PURPLE}\$(parse_git_branch)${DARKCUSTOMCOLORMIX}$ ${NC}"

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export -f parse_git_branch

extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Bash autocompletions
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
