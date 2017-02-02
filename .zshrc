autoload colors
colors

hostname=`hostname -s`
PROMPT=$'\n'"%{${fg[blue]}%}%T%{${reset_color}%} %{${fg[green]}%}[%~]%{${reset_color}%}"$'\n'"[${USER}@$hostname] %(!.#.$) "

export EDITOR=vim

setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10240
SAVEHIST=10240

bindkey -e

alias vim='mvim -v'
alias ls='ls -G'

alias docker-rmi-none="docker images|grep '<none>'|ruby -n -a -e 'puts \$F[2]'|xargs docker rmi"
alias docker-run-it='docker run --rm -it'
