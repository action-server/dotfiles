export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export TERMINAL=/usr/bin/termite
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox

export PATH=$PATH:$HOME/.local/bin

export HISTFILE="$XDG_DATA_HOME"/bash/history
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSHISTFILE=-

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx ~/.xinitrc
fi
