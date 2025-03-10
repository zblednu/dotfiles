#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lF'
alias la='ls -AlF'
alias grep='grep --color=auto'
alias sudo='sudo '
alias v='nvim'
alias ytmus='yt-dlp -x -f bestaudio '

PS1='[\W]\$ '

export PAGER='nvim +Man!'
export GTK_THEME='Adwaita:dark'
export TUKEVM='svra-ubuntu-server-0118.virtual.cloud.tuke.sk'
#export NVIM_APPNAME=
