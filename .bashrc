source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

eval "$(starship init bash)"

# Auto "cd" when entering just a path
shopt -s autocd

# Stop logging of repeated identical commands
export HISTCONTROL=erasedups
export HISTSIZE=10000

# Use vim keybindings for readline
# set -o vi
# bind -x '"\C-l": clear'

rm -rf .calc_history .w3m/

# Check if .bash_aliases is available and source it.
[ -f $XDG_CONFIG_HOME/shell/aliasrc ] && . $XDG_CONFIG_HOME/shell/aliasrc

neofetch
