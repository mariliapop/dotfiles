#Cores no terminal usando o tema IRBlack
#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced

#Atalhos para execucao dos comandos sdk Android
export PATH=${PATH}:/Users/mariliapop/DevelopmentAndroid/sdk/tools
export PATH=${PATH}:/Users/mariliapop/DevelopmentAndroid/sdk/platform-tools

#Terminal "Ala" Hdoria
export PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]] \n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="4;33"

# aliases
alias git='xcrun git' #protip
alias ls="ls -G"
alias ll="ls -Glahs"
alias psgrep="ps aux | egrep"
alias gs='git status'
alias ga='git add .'
alias gc='git commit'
alias gco='git checkout'
alias d="cd ~/Documents/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"


# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"


