# #!/usr/bin/env zsh

# Author:       Action <dev@action-server.com>
# License:      GNU GPLv3
# Description:  Zsh configuration file

HISTSIZE=1000000
SAVEHIST=1000000

# Auto completion
autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump-${ZSH_VERSION}"

# Include dotfiles in auto completion
setopt globdots

# Ignore duplicates in history
setopt histignoredups

# Enable comments
setopt interactivecomments

# Emacs mode
bindkey -e

# Fuzzy finder key bindings
source /usr/share/fzf/key-bindings.zsh

# Fuzzy finder auto completion
source /usr/share/fzf/completion.zsh

# Source aliases
if [ -x "${XDG_CONFIG_HOME}/shell/aliasrc" ]; then
	. "${XDG_CONFIG_HOME}/shell/aliasrc"
fi

# Starship prompt
eval "$(starship init zsh)"
