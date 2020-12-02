#!/bin/bash

# Workspace
alias w='[[ -d /run/media/action/sd/Workspace/ ]] && cd /run/media/action/sd/Workspace/'
alias whc='[[ -d /run/media/action/sd/Workspace/html_css ]] && cd /run/media/action/sd/Workspace/html_css'
alias wj='[[ -d /run/media/action/sd/Workspace/java/ ]] && cd /run/media/action/sd/Workspace/java/'
alias d='[[ -d ~/Desktop/ ]] && cd ~/Desktop/'
alias sd='[[ -d /run/media/action/sd/ ]] && cd /run/media/action/sd/'
alias balias='[[ -f ~/.bash_aliases ]] && $EDITOR ~/.bash_aliases && . ~/.bash_aliases'
alias bs='[[ -d /run/media/action/sd/Semester_V/BS/ ]] && cd /run/media/action/sd/Semester_V/BS/'
alias vimrc='[[ -f ~/.vimrc ]] && $EDITOR ~/.vimrc'

# System
alias la='ls -A'
alias l='ls -ACF'
alias ll='la -alF'
alias c="clear && clear"
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

# tools
alias copy='xclip -selection c'

# Pacman
alias paci='sudo pacman -S'
alias pacr='sudo pacman -Rsn'
alias pacs='pacman -Ss'
alias pacu='sudo pacman -Syu'

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

# Apt
# alias sai='sudo apt install'
# alias sar='sudo apt remove'
# alias saar='sudo apt autoremove'
# alias uu='sudo apt update && sudo apt upgrade && sudo apt autoremove'
