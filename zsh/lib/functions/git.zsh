# ~/.config/zsh/lib/functions/git.zsh
# -------------------------------
# Git workflow helpers
# -------------------------------
function gcb() {
    git checkout -b "$1" origin/main
}
