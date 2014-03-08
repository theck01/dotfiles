#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Directory list aliases
alias ls='ls -GF'
alias la='ls -a'
alias ll='ls -la'

# disable clear, use CTRL-L
alias clear='echo "Use CTRL-L"'

# customized prompt
RED="\[\e[6;31m\]"
YELLOW="\[\e[10;33m\]"
BLUE="\[\e[0;34m\]"
BLACK="\[\e[1;30m\]"
WHITE="\[\e[0;0m\]"
GREEN="\[\e[0;32m\]"
PLAIN="\[\e[0m\]"

# set prompt differently as root vs standard user
export PS1="${BLUE}explorer ${GREEN}\w \$ ${PLAIN}"

# Editor paths, always set to vim
EDITOR=vim
GIT_EDITOR=vim

# fix small directory spelling mistakes
shopt -s cdspell

# history search with arrow keys
bind  '"\e[A": history-search-backward'
bind  '"\e[B": history-search-forward'

# export development session secret
export SESSION_SECRET="development"

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
