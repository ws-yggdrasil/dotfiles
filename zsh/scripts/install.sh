#!/usr/bin/env bash

set -euo pipefail

# Install essential tools
sudo apt update
sudo apt install -y \
    zsh curl git ripgrep fd-find bat exa \
    fzf delta dust duf bottom jq

# Clone antidote
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote

# Install starship prompt
curl -sS https://starship.rs/install.sh | sh

# Setup Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Setup Node.js
curl -fsSL https://fnm.vercel.app/install | bash

# Create cache directory
mkdir -p ~/.cache/zsh

echo "Installation completed! Please restart your shell."