# Performance optimization
skip_global_compinit=1

# Load core configurations
for config_file ("${ZDOTDIR}"/lib/*.zsh(N)); do
    source "${config_file}"
done

# Load function configurations
for func_file ("${ZDOTDIR}"/lib/functions/*.zsh(N)); do
    source "${func_file}"
done

# Initialize completion system
autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit -d "${XDG_CACHE_HOME}/zsh/zcompdump"
else
    compinit -C -d "${XDG_CACHE_HOME}/zsh/zcompdump"
fi

# Load and initialize plugins
source "${ZDOTDIR}/.antidote/antidote.zsh"
antidote load "${ZDOTDIR}/.zsh_plugins.txt"

# Load completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source "$HOME/.cargo/env"
fpath+=~/.zfunc

# Initialize tools
eval "$(pyenv init -)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[[ -d "$FNM_PATH" ]] && eval "`fnm env`"

# Performance profiling end
# zprof