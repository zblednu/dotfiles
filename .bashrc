#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lF'
alias la='ls -AlF'
alias sudo='sudo '
alias v='nvim'
alias ytmus='yt-dlp -x -f bestaudio '
alias d='docker '
alias pn='pnpm '

PS1='[\W]\$ '

export PAGER='nvim +Man!'
export TUWEAK='svra-ubuntu-server-0118.virtual.cloud.tuke.sk'
export TUSTRONG='svra-ubuntu-server-0224.virtual.cloud.tuke.sk'
export EDITOR='nvim'
export VISUAL='nvim'

# pnpm
export PNPM_HOME="/home/bob/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
