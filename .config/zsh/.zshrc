export ZSH=/home/$USER/.config/zsh/oh-my-zsh
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export LANG=en_US.UTF-8
export ALIASES="$ZDOTDIR/aliases"
export FZF_DEFAULT_COMMAND='rg --files'
ZSH_THEME="theunraveler"

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none


HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

DISABLE_AUTO_TITLE="true"

plugins=(
    zsh-autosuggestions fast-syntax-highlighting
    docker docker-compose python celery
    httpie

)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/aliases/aliasrc
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

eval $(thefuck --alias fuck)
