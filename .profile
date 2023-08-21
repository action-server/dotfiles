# Author:       Action <dev@action-server.com>
# License:      GNU GPLv3
# Description:  Shell profile

assign_env(){
	# XDG
	export XDG_CONFIG_HOME="${HOME}/.config"
	export XDG_CACHE_HOME="${HOME}/.cache"
	export XDG_DATA_HOME="${HOME}/.local/share"
	export XDG_DATA_BIN="${HOME}/.local/bin"
	export XDG_DESKTOP_DIR="${HOME}/dl"
	export XDG_DOWNLOAD_DIR="${HOME}/dl"
	export XDG_MUSIC_DIR="${HOME}/media/aud"
	export XDG_DOCUMENTS_DIR="${HOME}/media/doc"
	export XDG_PICTURES_DIR="${HOME}/media/pic"
	export XDG_VIDEOS_DIR="${HOME}/media/vid"
	export XDG_TEMPLATES_DIR="${HOME}/dl"
	export XDG_PUBLICSHARE_DIR="${HOME}/dl"
	export XDG_PRIVATE_DIR="${HOME}/private"

	# Programs
	export EDITOR='nvim'
	export VISUAL='nvim'
	export PAGER='less'
	export TERMINAL='alacritty'
	export TERMINAL_TMUX='alacritty --command tmux new-session -A'
	export TERMINAL_SCRATCHPAD='alacritty --class terminal_scratchpad --command tmux new-session -A'
	export TERMINAL_NEOMUTT='alacritty --option window.opacity=1.0 --command neomutt'
	export TERMINAL_NEWSBOAT="alacritty --option window.opacity=1.0 --command newsboat --url-file ${XDG_PRIVATE_DIR}/newsboat/urls"
	export TERMINAL_LF='alacritty --command lf'
	export BROWSER='brave'
	export PRIVATE_BROWSER='brave --incognito'
	export TERMINAL_BROWSER='w3m'
	export SCREENSHOT='flameshot gui'
	export PDFREADER='zathura'
	export FZF_DEFAULT_COMMAND='fd .'
	export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"
	export FZF_ALT_C_COMMAND='fd --type d .'

	#	Fixes
	export DOCKER_HOST="unix://${XDG_RUNTIME_DIR}/podman/podman.sock" 
	export GTK_IM_MODULE='fcitx'
	export QT_IM_MODULE='fcitx'
	export SDL_IM_MODULE='fcitx'
	export XMODIFIERS='@im=fcitx'

	# Home directory clean up
	export XAUTHORITY="${XDG_RUNTIME_DIR}/Xauthority"
	export HISTFILE="${XDG_DATA_HOME}/bash/history"
	export BASH_COMPLETION_USER_FILE="${XDG_DATA_HOME}/bash/bash_completion"
	export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"
	export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"
	export LESSHISTFILE='-'
	export GRADLE_USER_HOME="${XDG_DATA_HOME}/gradle"
	export ANDROID_PREFS_ROOT="${XDG_CONFIG_HOME}/android"
	export ANDROID_EMULATOR_HOME="${XDG_DATA_HOME}/android/emulator"
	export IPYTHONDIR="${XDG_CONFIG_HOME}/jupyter"
	export JUPYTER_CONFIG_DIR="${XDG_CONFIG_HOME}/jupyter"
	export MOZ_GTK_TITLEBAR_DECORATION='client'
	export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
	export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
	export PUB_CACHE="${XDG_CACHE_HOME}/pub"
	export GOPATH="${XDG_DATA_HOME}/go"
	export CALCHISTFILE="${XDG_CACHE_HOME}/calc_history"
	export VSCODE_PORTABLE="${XDG_CONFIG_HOME}/vscode"

	# PATH
	export PATH="${XDG_DATA_BIN}:${PATH}"
}

set_umask(){
	umask 0022
}

create_directories(){
	mkdir -p "${XDG_DATA_HOME}/gnupg"
	mkdir -p "${XDG_DATA_HOME}/bash"
	mkdir -p "${XDG_CONFIG_HOME}"
	mkdir -p "${XDG_PRIVATE_DIR}"
	mkdir -p "${XDG_DOWNLOAD_DIR}"
	mkdir -p "${XDG_DOCUMENTS_DIR}"
}

source_shell(){
	. "${HOME}/.bashrc"
}

start_window_system(){
	if [ -n "${DISPLAY}" ]; then
		return
	fi

	if [ "$(tty)" != '/dev/tty1' ]; then
		return
	fi

	exec startx "${XDG_CONFIG_HOME}/x11/xinitrc" -- -keeptty
}

main(){
	assign_env
	set_umask
	create_directories
	source_shell
	start_window_system
}

main "${@}"
