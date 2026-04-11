# --- Unset Greeting ---
set -g fish_greeting

# --- PATH ---
fish_add_path -g $HOME/.local/bin $HOME/bin /opt/homebrew/bin /opt/homebrew/sbin /usr/local/bin 

# --- Editor ---
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx LANG en_US.UTF-8

if status --is-interactive
    # --- Aliases ---
    alias dotfiles '/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    
    # Replace ls with eza
    alias ls='eza -al --color=always --group-directories-first --icons=always --no-time' # preferred listing
    alias l.="eza -a | grep -e '^\.'"                                     # show only dotfiles

    # --- fzf ---
    fzf --fish | source

    # --- zoxide (replaces cd) ---
    zoxide init fish --cmd cd | source

    # --- Prompt ---
    starship init fish | source
end
