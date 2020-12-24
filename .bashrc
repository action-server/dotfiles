eval "$(starship init bash)"

# Auto "cd" when entering just a path
shopt -s autocd

# Stop logging of repeated identical commands
export HISTCONTROL=erasedups

# Use vim keybindings for readline
# set -o vi

# Check if .bash_aliases is available and source it.
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

neofetch
