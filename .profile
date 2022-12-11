# XDG env
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_DESKTOP_DIR="$HOME"/dl
export XDG_DOWNLOAD_DIR="$HOME"/dl
export XDG_DOCUMENTS_DIR="$HOME"/doc
export XDG_MUSIC_DIR="$HOME"/media/aud
export XDG_PICTURES_DIR="$HOME"/media/pic
export XDG_VIDEOS_DIR="$HOME"/media/vid
export XDG_TEMPLATES_DIR="$HOME"/dl
export XDG_PUBLICSHARE_DIR="$HOME"/dl

# General
export EDITOR='/usr/bin/nvim'
export VISUAL='/usr/bin/nvim'
export PAGER='/usr/bin/less'
# export TERM='/usr/bin/alacritty'
export TERMINAL='/usr/bin/alacritty'
export TERMINAL_TMUX='/usr/bin/alacritty -e /usr/bin/tmux new-session -A -s main'
export TERMINAL_SCRATCHPAD='/usr/bin/alacritty --class terminal_scratchpad --command tmux new-session -A -s scratchpad'
export TERMINAL_NEOMUTT='/usr/bin/alacritty -o window.opacity=1.0 -e /usr/bin/neomutt'
export TERMINAL_NEWSBOAT='/usr/bin/alacritty -o window.opacity=1.0 -e /usr/bin/newsboat'
export TERMINAL_LF='/usr/bin/alacritty -e /usr/bin/lf'
export BROWSER='brave'
export PRIVATE_BROWSER='brave --incognito'
# export PRIVATE_BROWSER='firefox --private-window'
export TERMINAL_BROWSER="/usr/bin/w3m"
export SCREENSHOT="/usr/bin/flameshot gui"
export PDFREADER='/usr/bin/zathura'
# export MOZ_X11_EGL=1
export WINIT_X11_SCALE_FACTOR='1'
export FZF_DEFAULT_COMMAND='/usr/bin/fd .'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="/usr/bin/fd -t d ."
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"


# Home directory clean up
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export HISTFILE="$XDG_DATA_HOME"/bash/history
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export LESSHISTFILE=-
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export ANDROID_PREFS_ROOT="$XDG_CONFIG_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/emulator
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export MOZ_GTK_TITLEBAR_DECORATION=client
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export PUB_CACHE="$XDG_CACHE_HOME"/pub
export GOPATH="$XDG_DATA_HOME"/go

# Append to environmental variable PATH
export PATH="$HOME"/.local/bin:"$PATH"

umask 022

[ -f ~/.bashrc ] && . ~/.bashrc

if [ -n "${DISPLAY}" ]; then
	return
fi

if [ "$(tty)" != "/dev/tty1" ] && [ "$(tty)" != "/dev/tty3" ]; then
	return
fi

echo '======================='"$(date)"'======================' >> "$XDG_CACHE_HOME"/x.log
exec startx $XDG_CONFIG_HOME/x11/xinitrc >> "$XDG_CACHE_HOME"/x.log 2>&1
