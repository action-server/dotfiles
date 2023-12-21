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
if [ -x "${XDG_CONFIG_HOME}/shell/aliasrc" ]; then
	. "${XDG_CONFIG_HOME}/shell/aliasrc"
fi
