# --- General ---
shopt -s checkwinsize
shopt -s autocd 2>/dev/null
shopt -s cdspell 2>/dev/null

# --- History ---
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
shopt -s histappend
shopt -s cmdhist
PROMPT_COMMAND='history -a'

# --- PATH ---
export PATH="$HOME/.local/bin:$HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

# --- Editor ---
export EDITOR='nvim'
export VISUAL='nvim'

# --- Prompt (minimal) ---
PS1='\n\w \$ '

# --- Readline ---
bind Space:magic-space
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

# --- Completions ---
[[ -r "/opt/homebrew/etc/bash_completion" ]] && . "/opt/homebrew/etc/bash_completion"

# --- fzf ---
eval "$(fzf --bash)"

# --- zoxide (replaces cd) ---
eval "$(zoxide init bash --cmd cd)"

# --- Aliases ---
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls --color'
