##
# Plugins using Antigen
##

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle arialdomartini/oh-my-git

antigen theme arialdomartini/oh-my-git-themes oppa-lana-style

##
# ls colors
##

eval $(dircolors ~/.dircolors)

##
# Exports
##

export EDITOR=vim
export BROWSER=chromium

##
# Aliases
##

alias v='vim'
alias vi='vim'
alias t='termite &; disown'
alias x='exit'
alias y='yaourt'
