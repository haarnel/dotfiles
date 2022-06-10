export ZSH="$HOME/.config/zsh/oh-my-zsh"
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export LANG=en_US.UTF-8
export ALIASES="$ZDOTDIR/aliases"
export FZF_DEFAULT_COMMAND='rg --files'
export ZSH_FZF_HISTORY_SEARCH_BIND="^ "
# export FZF_DEFAULT_OPTS='--color=16 --ansi -m --preview="bat --style=numbers --theme=base16-256 --color=always --line-range :500 {}" --preview-window right:noborder'
export FZF_DEFAULT_OPTS='--color=16 --ansi -m --preview-window right:noborder'
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_THEME='theunraveler'

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
DISABLE_AUTO_TITLE="true"

setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

plugins=(
    zsh-autosuggestions fast-syntax-highlighting
    docker docker-compose python
    httpie poetry postgres fzf-tab zsh-vi-mode gpg-agent
)

# eval $(thefuck --alias fuck)
# eval "$(fasd --init auto)"

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/aliases/aliasrc
