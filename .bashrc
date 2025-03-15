alias g="git"
alias gi="g init"
alias gs="g status --short"
alias gS="g status"

alias gd="g diff --word-diff=color"
alias gds="gd --staged"

alias ga="g add"
alias gae="g add --edit"
alias gc="g commit"

alias gr="g restore"
alias gu="g restore --staged"

alias gl="g log --oneline"
alias glg="g log --oneline --graph"
alias gla="g log --oneline --all"
alias glag="g log --oneline --all --graph"

alias gL="g log"
alias gLg="g log --graph"
alias gLa="g log --all"
alias gLag="g log --all --graph"

alias gb="g branch"
alias gbm="g branch --move"
alias gco="g checkout"

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
