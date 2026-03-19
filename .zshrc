# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd cd)"

# Local bin (for talm)
path=($HOME/.local/bin $path)

alias v='nvim'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
