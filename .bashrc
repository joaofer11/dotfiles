alias so="source ~/.bashrc"
alias bcon="vim ~/.bashrc && so"
alias ls="ls --color --group-directories-first"
alias la="ls -a"
alias ll="la -l"

function path { echo $PATH | tr ':' '\n'; }

CYAN="\[\e[36m\]"
GREEN="\[\e[32m\]"
ORANGE="\[\e[33m\]"
RESET="\[\e[39m\]"

PS1="${CYAN}\w${RESET}\n${GREEN}\$${RESET} "

export PATH="$HOME/.local/bin:$PATH"

if [[ "$OSTYPE" == "cygwin" ]]; then
	export MSYS=winsymlinks:nativestrict
fi

if [ -x "$(command -v fzf)" ]; then
	source ~/dotfiles/shell/fzf.sh
fi
