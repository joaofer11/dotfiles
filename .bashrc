alias bcon="vim ~/.bashrc && source ~/.bashrc"
alias ls="ls --color --group-directories-first"
alias la="ls -a"
alias ll="la -l"

function path { echo $PATH | tr ':' '\n'; }

CYAN="\[\e[36m\]"
GREEN="\[\e[32m\]"
ORANGE="\[\e[33m\]"
RESET="\[\e[39m\]"

PS1="${CYAN}\w${RESET}${ORANGE}\$(__git_ps1)${RESET}\n${GREEN}\$${RESET} "
