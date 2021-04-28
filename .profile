export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/bin/script
export PATH=$PATH:$HOME/.local/bin/hardend

export EDITOR=nvim
export VISUAL=nvim
export PAGER=less
export TERMINAL=alacritty
export BROWSER="hardend-firefox"
export PRIVATE_BROWSER="hardend-firefox --private-window"
export TERMINAL_BROWSER="w3m"
# export BROWSER="brave"
# export PRIVATE_BROWSER="brave --incognito --no-referrers"
export SCREENSHOT="flameshot gui"
export PDFREADER=zathura
export MOZ_X11_EGL=1

# Home directory clean up
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export HISTFILE="$XDG_DATA_HOME"/bash/history
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export LESSHISTFILE=-
# export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export MOZ_GTK_TITLEBAR_DECORATION=client
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store

umask 022

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec startx $XDG_CONFIG_HOME/X11/xinitrc
fi
