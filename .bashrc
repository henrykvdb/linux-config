source /project/asic_fpga/tools/bash/bashrc.sh
source /project/asic_fpga/tools/bash/bashrc-extra.sh

export PATH=/storage/tools/nodejs/bin:$PATH
export PATH=/storage/tools/tmux/static/3.3a:$PATH
export PATH=/storage/tools/nvim/v0.10.0/bin:$PATH

alias ll="ls -lAvhtr --color"
alias l=ll

#export PS1='$(pwd)$ '
PS1='\h:\W \$ '
PS1+=$'\[\a\]' # add bell to cmd complete

export no_proxy="$no_proxy,nsn-rdnet.net"

# alias to retrieve processes
# usage after psm to kill groupid: kill -s TERM -31146
alias psm='/bin/ps -u $USER --sort pgid,time,size,time,pcpu -o pid,pgid,state,user,start_time,time,size:9,pcpu,command'

alias vi="nvim -u NONE"
alias vim=nvim
export XDG_CONFIG_HOME=$HOME/.config

# Configure history
export HISTCONTROL=erasedups
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s histappend
shopt -s cmdhist
export HISTINGORE="pwd:ls:history"
