# ~/.bashrc: executed by bash(1) for non-login shells.  # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) # for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# override history command to synchronize history before display
history() {
  _bash_history_sync
  builtin history "$@"
}

# synchronize history
_bash_history_sync() {
  builtin history -a
  HISTFILESIZE=$HISTSIZE
  builtin history -c
  builtin history -r
}

# synchronize history on each command prompt
export PROMPT_COMMAND="_bash_history_sync; $PROMPT_COMMAND"

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=$HISTSIZE

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Set terminal to be vi mode
set -o vi

# customized prompt
RED="\[\e[6;31m\]"
YELLOW="\[\e[10;33m\]"
BLUE="\[\e[0;34m\]"
BLACK="\[\e[1;30m\]"
WHITE="\[\e[0;0m\]"
GREEN="\[\e[0;32m\]"
PLAIN="\[\e[0m\]"
export PS1="${BLUE}tmac ${GREEN}\w \$ ${PLAIN}"

# Editor defaults to vim
EDITOR=vim
GIT_EDITOR=vim
P4EDITOR=vim

# history search with arrow keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
