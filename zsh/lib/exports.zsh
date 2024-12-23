# ~/.config/zsh/lib/exports.zsh
# -------------------------------
# Node.js tools
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

FNM_PATH="${XDG_DATA_HOME}/fnm"
[[ -d "$FNM_PATH" ]] && export PATH="$FNM_PATH:$PATH"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# Tool configurations
export HOMEBREW_NO_AUTO_UPDATE=1
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

# FZF configuration
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS="
    --height 40% --layout=reverse --border --cycle
    --preview-window 'right:60%'
    --preview 'bat --color=always --style=numbers --line-range=:500 {}'
"
export FZF_CTRL_T_OPTS="
    --preview 'bat -n --color=always {}'
    --bind 'ctrl-/:change-preview-window(down|hidden|)'
"

# Tool theming
export BAT_THEME="TwoDark"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"