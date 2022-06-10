#!/bin/zsh

export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts:$HOME/Software:$HOME/.local/poetry/bin:$HOME/.local/share/npm/bin
export GOPATH=$HOME/.local/go
export GOBIN=$HOME/.local/bin
export WM="bspwm"
export SUDO_ASKPASS=/home/haarnel/.scripts/rofi-ask-pass
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"
export LAUNCHER="rofi"
export ZSH_FZF_HISTORY_SEARCH_BIND="^ "
export CM_LAUNCHER=$LAUNCHER
export PLAYER_DEFAULT="mpv"
export READER="zathura"
export FM="ranger"
export BAT_THEME="gruvbox-dark"
export POETRY_HOME=~/.local/poetry
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XAUTHORITY=/tmp/.Xauthority
export XINITRC=$XDG_CONFIG_HOME/xinit
export NOTMUCH_CONFIG=$XDG_CONFIG_HOME/notmuch-config
export GTK_THEME="Materia-dark"
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
export INPUTRC=$XDG_CONFIG_HOME/inputrc
export WINEPREFIX=$XDG_DATA_HOME/.local/share/wineprefixes/default
export HISTFILE=$XDG_DATA_HOME/.local/share/history
export ZSH_CUSTOM=$XDG_CONFIG_HOME/zsh/oh-my-zsh/custom
export NODE_REPL_HISTORY=$XDG_DATA_HOME/node_repl_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export ATOM_HOME=$XDG_DATA_HOME/atom
export WEGORC=$XDG_CONFIG_HOME/wego/.wegorc
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export PYTHON_EGG_CACHE=$XDG_CACHE_HOME/python-eggs
export IPYTHONDIR=$XDG_CONFIG_HOME/jupyter
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_X11_EGL=1
export _JAVA_AWT_WM_NONREPARENTING=1
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
export QT_STYLE_OVERRIDE="kvantum"
export PSQLRC=$XDG_CONFIG_HOME/pg/psqlrc
export PSQL_HISTORY=$XDG_CACHE_HOME/pg/psql_history
export PGPASSFILE=$XDG_CONFIG_HOME/pg/pgpass
export PGSERVICEFILE=$XDG_CONFIG_HOME/pg/pg_service.conf
export LIBVA_DRIVER_NAME="iHD"
export NVM_DIR=$XDG_DATA_HOME/nvm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export CARGO_HOME=$XDG_DATA_HOME/cargo
export ANKI_BASE=$HOME/Documents/Anki
export RECOLL_CONFDIR="$XDG_CONFIG_HOME/recoll"


[[ -n "$(tty)" && -z $(pgrep -u $USER "\bXorg$") ]] && exec startx $XINITRC > /dev/null 2>&1
