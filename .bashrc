## Scripts
## This loads current git branch to display on prompt
source ~/.dotfiles/shell/git-prompt.sh

## Aliases
alias bcon="nvim ~/.bashrc && source ~/.bashrc"
alias ncon="cd ~/.config/nvim && nvim . && cd -"
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -a -l -h --group-directories-first"
alias grep="grep --color=always"
alias ascii="man ascii | head --lines -49 | tail --line +15"

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
