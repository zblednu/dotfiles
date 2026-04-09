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

# --- PATH ---
export PATH="$HOME/.local/bin:$HOME/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1

# --- Editor ---
export EDITOR='nvim'
export VISUAL='nvim'
export LANG='en_US.UTF-8'

# --- Prompt (minimal) ---
PROMPT_COMMAND='history -a; \
history -n; \
PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\n\[\e[90m\]\w ${PS1_CMD1}\n\$ \[\e[0m\]'

# --- Readline ---
bind Space:magic-space
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

# --- Completions ---
[[ -r "/opt/homebrew/etc/bash_completion" ]] && . "/opt/homebrew/etc/bash_completion"

# --- Aliases ---
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls -1 --color -F'
alias ll='ls -lh'
alias la='ll -a'

# --- fzf ---
eval "$(fzf --bash)"

# --- zoxide (replaces cd) ---
eval "$(zoxide init bash --cmd cd)"

