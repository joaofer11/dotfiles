alias g="git"
alias gs="g status -s"
alias ga="g add"
alias gap="g add --patch"
alias gc="g commit"
alias gd="g diff --word-diff=color"
alias gds="gd --staged"
alias gr="g restore"
alias grs="gr --staged"
alias gl="g log --oneline --graph"
alias glv="g log"

GIT_COL="1;33" ## Yellow
SEP_COL="2;37" ## Gray

export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export GIT_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export PS1="\[\033["$DIR_COL"m\]\W\[\033[00m\]\[\033["$GIT_COL"m\]\$(__git_ps1)\[\033[00m\] \[\033["$SEP_COL"m\]\$\[\033[00m\] "
export PATH="$HOME/opt/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/opt/lib:$LD_LIBRARY_PATH"

alias so="source ~/.bashrc"
alias bc="vim ~/.bashrc && so"
alias nc="cd ~/.config/nvim && nvim . && cd -"
alias vc="cd ~/.dot/vim && v . && cd -"
alias v="vim"
alias ls="ls --color=always --group-directories-first"
alias la="ls -a"
alias ll="la -laG"
alias ascii="man ascii | head --lines -49 | tail --line +15"

if [ -z "$(which fzf)" ]; then
	eval "$(fzf --bash)"
fi

function vf() {
	find $@ -type f | fzf --multi --bind "enter:become(vim {+})"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
