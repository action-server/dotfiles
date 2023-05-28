#!/usr/bin/env bash

# Author:       Action <dev@action-server.com>
# License:      GNU GPLv3
# Description:  Bash configuration file

# Fuzzy finder key bindings
source /usr/share/fzf/key-bindings.bash

# Fuzzy finder auto completion
source /usr/share/fzf/completion.bash

# Starship prompt
eval "$(starship init bash)"

# Stop logging of repeated identical commands
export HISTCONTROL=erasedups

# Limit shell history
export HISTSIZE=1000000

# Source aliases
[ -r "${XDG_CONFIG_HOME}/shell/aliasrc" ] && . "${XDG_CONFIG_HOME}/shell/aliasrc"

# Source argcomplete python completion
[ -r "${XDG_DATA_HOME}/bash/python-argcomplete"   ] && . "${XDG_DATA_HOME}/bash/python-argcomplete"
