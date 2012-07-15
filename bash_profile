source ~/.git-completion.bash
source ~/.bash_completion.bash

# aliases
alias git='xcrun git' #protip
alias ls="ls -G"
alias ll="ls -Glahs"
alias psgrep="ps aux | egrep"

# scripts and exports
export PS1='\n[\u] \[\033[1;33m\]\w\a\[\033[0m\]\n\$ '
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Make vim the default editor
export EDITOR="vim"

# Colours
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\e[0m\]"
GRAY="\[\033[1;30m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GRAY="\[\033[0;37m\]"
LIGHT_GREEN="\[\033[1;32m\]"
LIGHT_RED="\[\033[1;31m\]"
RED="\[\033[0;31m\]"
WHITE="\[\033[1;37m\]"
YELLOW="\[\033[0;33m\]"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
