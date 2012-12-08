export PATH="$PATH:/usr/local/mysql/bin"

function parse_git_branch {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "("${ref#refs/heads/}")"
}

source ~/.git-completion.bash

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

GITPS1SHOWDIRTYSTATE=true

# Git credentials
GIT_AUTHOR_NAME="Hugo Doria"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="hugo@popcode.com.br"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# aliases
alias git='xcrun git' #protip
alias ls="ls -G"
alias ll="ls -Glahs"
alias psgrep="ps aux | egrep"
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'

# scripts and exports
export PS1='\n[\u] \[\033[1;33m\]\w\a\[\033[0m\] $(parse_git_branch)\n\$ '
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
