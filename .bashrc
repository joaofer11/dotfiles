## Scripts
## This loads current git branch to display on prompt
source ~/.dotfiles/shell-scripts/git-prompt.sh

## Aliases
alias bcon="nvim ~/.dotfiles/.bashrc && source ~/.dotfiles/.bashrc"
alias ls="ls --color -G"
alias la="ls -a"
alias ll="la -l"
alias grep="grep --color=always"
alias ascii="man ascii | head --lines -49 | tail --line +15"

## Functions
function path() {
    echo "$PATH" | tr ':' '\n'
}

DIR_COL="0;36" ## Blue
GIT_COL="1;33" ## Yellow
SEP_COL="2;37" ## Gray

## Env variables
export PATH="$PATH:/opt/ffmpeg/bin:/opt/neovim/bin:/opt/clangd/bin"
export GIT_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export PS1="\[\033["$DIR_COL"m\]\W\[\033[00m\]\[\033["$GIT_COL"m\]\$(__git_ps1)\[\033[00m\] \[\033["$SEP_COL"m\]$\[\033[00m\] "
export LS_COLORS="$LS_COLORS:di="$DIR_COL""

## Miscellaneous
## NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
