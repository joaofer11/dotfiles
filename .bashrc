alias gs="git status -s"
alias ga="git add"
alias gap="git add --patch"
alias gd="git diff --word-diff=color"
alias gds="gd --staged"
alias gr="git restore"
alias grs="gr --staged"
alias gl="git log --oneline --graph"
alias glv="git log"

alias bcon="nv ~/.bashrc && source ~/.bashrc"
alias ncon="cd ~/.config/nvim && nvim . && cd -"
alias nv="nvim"
alias ls="ls --color=always --group-directories-first"
alias la="ls -a"
alias ll="la -laG"
alias t="tree"
alias grep="grep --color=always"
alias ascii="man ascii | head --lines -49 | tail --line +15"
alias path="echo $PATH | tr ':' '\n'"

## Functions
function path() {
    echo "$PATH" | tr ':' '\n'
}

GIT_COL="1;33" ## Yellow
SEP_COL="2;37" ## Gray

## Env variables
export GIT_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export PS1="\[\033["$DIR_COL"m\]\W\[\033[00m\]\[\033["$GIT_COL"m\]\$(__git_ps1)\[\033[00m\] \[\033["$SEP_COL"m\]\$\[\033[00m\] "

export PATH="$HOME/prog/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/prog/lib:$LD_LIBRARY_PATH"

## Miscellaneous
## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
