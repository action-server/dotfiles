#!/bin/bash

# Workspace
alias d='[[ -d ~/Desktop/ ]] && cd ~/Desktop/'
# alias sd='[[ -d /run/media/action/sd/ ]] && cd /run/media/action/sd/'
alias balias='[[ -f ~/.bash_aliases ]] && $EDITOR ~/.bash_aliases && . ~/.bash_aliases'

# System
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias la='ls -A'
alias l='ls -ACF'
alias ll='ls -alF'

# tools
alias copy='xclip -selection clipboard'

# Git
alias gits='git status'
alias gitl='git log'
alias gitch='git checkout'
alias gitb='git branch'
alias gitd='git diff'

# Docker
alias dkps='docker ps -a'
alias dkr='docker run'
alias dks='docker stop'
alias dkrm='docker rm'
alias dkrmi='docker rmi'
alias dkcu='docker-compose up'
alias dkcd='docker-compose down'
alias dkcr='docker-compose restart'

# Pacman
alias paci='sudo pacman -S'
alias pacr='sudo pacman -Rsn'
alias pacs='pacman -Ss'
alias pacu='sudo pacman -Syu'

# Apt
# alias sai='sudo apt install'
# alias sar='sudo apt remove'
# alias saar='sudo apt autoremove'
# alias uu='sudo apt update && sudo apt upgrade && sudo apt autoremove'
