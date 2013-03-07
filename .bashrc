#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Directory list aliases
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'

# connect to a known WPA2 based network via DHCP
function wpa_connect {
  sudo wpa_supplicant -Dwext -i wlan0 -c /etc/wpa_supplicant.conf -B;
  sudo dhcpcd wlan0;
}

# add custom scripts to path
PATH=$PATH:/usr/local/scripts/

# customized prompt
RED="\[\e[6;31m\]"
YELLOW="\[\e[10;33m\]"
BLUE="\[\e[0;34m\]"
BLACK="\[\e[1;30m\]"
WHITE="\[\e[0;0m\]"
GREEN="\[\e[0;32m\]"
PLAIN="\[\e[0m\]"

# set prompt differently as root vs standard user
if [[ $(id -u) -eq 0 ]]
then
  export PS1="${YELLOW}[\#] ${RED}\w # ${PLAIN}"
else
  export PS1="${YELLOW}[\#] ${GREEN}\w \$ ${PLAIN}"
fi

# Path for gem installs
PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin

# Editor paths, always set to vim
EDITOR=vim
GIT_EDITOR=vim

#start TMUX on login
[[ $TERM != screen* ]] && exec tmux

# use vi bindings rather than emacs
set -o vi

# fix small directory spelling mistakes
shopt -s cdspell
