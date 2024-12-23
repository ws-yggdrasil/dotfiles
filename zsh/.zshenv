# ~/.config/zsh/.zshenv
# -------------------------------
# XDG Base Directory Specification
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# Ensure critical directories exist
mkdir -p "${XDG_CACHE_HOME}/zsh"
mkdir -p "${XDG_DATA_HOME}/zsh"

# Core environment setup
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM="xterm-256color"

# Default applications
export EDITOR="nvim"
export VISUAL="code"
export PAGER="less"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Rust environment setup
. "$HOME/.cargo/env"

# XDG compliance for various tools
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PYENV_ROOT="${XDG_DATA_HOME}/pyenv"
export PIPENV_VENV_IN_PROJECT=1

# Development tools configuration
export LDFLAGS="-L/usr/local/lib -L/usr/lib/x86_64-linux-gnu"
export CPPFLAGS="-I/usr/local/include -I/usr/include/x86_64-linux-gnu"
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/usr/lib/x86_64-linux-gnu/pkgconfig"

# User identification
export DEFAULT_USER="${USER:-$(id -un)}"

# Path configuration
typeset -U path # Ensure unique entries
local_paths=(
    "${HOME}/.local/bin"
    "${HOME}/.cargo/bin"
)
system_paths=()
export path=(
    $local_paths
    $system_paths
    $path
)
