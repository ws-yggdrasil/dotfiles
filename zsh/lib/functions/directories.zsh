# ~/.config/zsh/lib/functions/directories.zsh
# -------------------------------
# Directory-related functions
# -------------------------------
# Smart directory creation and navigation
function mkcd() {
    mkdir -p "$@" && cd "$_"
}
