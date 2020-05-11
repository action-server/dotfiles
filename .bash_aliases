#!/bin/bash

# Workspace
alias w1='[[ -d ~/workspace/abschlussprojekt-zikade3301/ ]] && cd ~/workspace/abschlussprojekt-zikade3301/'
alias w2='[[ -d /run/media/action/sd/Workspace/ ]] && cd /run/media/action/sd/Workspace/'
alias w3='[[ -d /run/media/action/sd/Workspace/java/Main/src/ ]] && cd /run/media/action/sd/Workspace/java/Main/src/'
alias d='[[ -d ~/Desktop/ ]] && cd ~/Desktop/'
alias sd='[[ -d /run/media/action/sd/ ]] && cd /run/media/action/sd/'
alias balias='[[ -f ~/.bash_aliases ]] && nano ~/.bash_aliases && . ~/.bash_aliases'

# System
alias la='ls -A'
alias l='ls -ACF'
alias ll='la -alF'
alias c="clear && clear"
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

# tools
alias t='tree'
alias g='gedit'
alias copy='xclip -selection c'

# Pacman
alias paci='sudo pacman -S'
alias pacr='sudo pacman -Rsn'
alias pacs='pacman -Ss'
alias pacu='sudo pacman -Syu'
alias pacuu='sudo pacman -Syyu'

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

# Miniconda
#alias compla='conda activate && spyder'
#alias compana='conda activate && jupyter notebook'

# Apt
#alias ssi='sudo snap install'
#alias sai='sudo apt install'
#alias sar='sudo apt remove'
#alias saar='sudo apt autoremove'
#alias uu='sudo apt update && sudo apt upgrade && sudo apt autoremove'

# WFI
alias set-wifi='sudo modprobe -r ath9k && sudo modprobe ath9k nohwcrypt=1'
