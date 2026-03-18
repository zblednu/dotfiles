#
# Executes commands at the start of an interactive session.
#

if [[ -z "$TMUX" ]]; then
  export TERM=xterm-256color
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd cd)"

alias pn=pnpm
alias v=nvim
alias cat=bat

alias ls='eza --group-directories-first'
alias ll='eza -lh --git --group-directories-first'
alias la='eza -lah --git --group-directories-first'
alias tree='eza --tree -L 2 --group-directories-first'
alias dotfiles='/usr/bin/git --git-dir=/Users/maksym.surovtsev/.dotfiles/ --work-tree=/Users/maksym.surovtsev'
