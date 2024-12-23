# ~/.config/zsh/lib/theme.zsh
# -------------------------------
# Theme and appearance configuration
# -------------------------------
# Load colors
autoload -U colors && colors

# Configure terminal title
function set_terminal_title() {
    echo -ne "\033]0;${PWD/#$HOME/~}\007"
}
precmd_functions+=(set_terminal_title)

# Directory colors
if [[ -x "$(command -v vivid)" ]]; then
    export LS_COLORS="$(vivid generate molokai)"
else
    export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
fi

# Man colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'