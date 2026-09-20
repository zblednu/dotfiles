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
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH"

# --- Editor ---
export EDITOR='vim'
export VISUAL='vim'
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

# --- Aliases ---
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='ls -1 -F --color=auto'
alias ll='ls -lh'
alias la='ll -a'
alias grep='grep --color=auto'
