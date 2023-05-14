source /usr/share/fzf/key-bindings.bash # Fuzzy finder key bindings
source /usr/share/fzf/completion.bash # Fuzzy finder auto completion

eval "$(starship init bash)" # Starship prompt

shopt -s autocd # Auto change directory when entering path

export HISTCONTROL=erasedups # Stop logging of repeated identical commands
export HISTSIZE=1000000 # Limit shell history

# set -o vi # Use vim keybindings for readline
# bind -x '"\C-l": clear' # bind <ctrl+l> to clear, to override vim binding

# Source aliases
[ -r "${XDG_CONFIG_HOME}/shell/aliasrc" ] && . "${XDG_CONFIG_HOME}/shell/aliasrc"

# Source argcomplete python completion
[ -r "${XDG_DATA_HOME}/bash/python-argcomplete"   ] && . "${XDG_DATA_HOME}/bash/python-argcomplete"
