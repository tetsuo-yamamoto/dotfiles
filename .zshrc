autoload colors
colors

PROMPT=$'\n'"%{${fg[blue]}%}%T%{${reset_color}%} %{${fg[green]}%}[%~]%{${reset_color}%}"$'\n'"[${USER}] %(!.#.$) "

export EDITOR=vim

setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10240
SAVEHIST=10240

bindkey -e
