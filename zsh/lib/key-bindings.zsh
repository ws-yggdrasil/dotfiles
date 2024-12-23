# ~/.config/zsh/lib/key-bindings.zsh
# -------------------------------
# Key bindings configuration
# -------------------------------
# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Better history searching
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Load FZF key bindings if available
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
fi
