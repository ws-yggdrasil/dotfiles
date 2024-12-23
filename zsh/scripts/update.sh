#!/usr/bin/env bash

set -euo pipefail

# Update system packages
sudo apt update && sudo apt upgrade -y

# Update Rust
rustup update

# Update Node.js
fnm install --lts

# Update antidote plugins
antidote update

# Update starship
curl -sS https://starship.rs/install.sh | sh

echo "Update completed!"