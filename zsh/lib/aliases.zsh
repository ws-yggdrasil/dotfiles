# ~/.config/zsh/lib/aliases.zsh
# -------------------------------
# Workflow aliases
alias reload='exec zsh'

# **File/Directory Navigation**
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias work="cd /mnt/d/Workspace"
alias proj="cd /mnt/d/projects"
alias res="cd /mnt/d/resources"
alias dev="cd /mnt/d/development"
alias docs="cd /mnt/d/documents"
alias db="cd /mnt/d/databases"
alias art="cd /mnt/d/artifacts"
alias learn="cd /mnt/d/learning"
alias security="cd /mnt/d/security"
alias tools="cd /mnt/d/tools"
alias cfg="cd ~/.config && ls"
alias lcl="cd ~/.local && ls"

# **System Commands**
alias rmrf='rm -rf $*'
alias h='history'
alias c='clear'
alias e='exit'

# Editors/Utitlities
alias vim='nvim'

# **File Management**
alias ls='exa --group-directories-first --icons'
alias ll='exa -l --group-directories-first --icons'
alias la='exa -la --group-directories-first --icons'
alias lt='exa -T --level=2 --group-directories-first --icons'
# Tree view
alias tree='eza -Ta --icons --ignore-glob="node_modules|.git|.vscode|.DS_Store" $*'
alias ltd='eza -TaD --icons --ignore-glob="node_modules|.git|.vscode|.DS_Store" $*'

# **Git**
alias g='git'
alias ga='git add'
alias gf='git fetch'
alias gs='git status'
alias gss='git status -s'
alias gup='git fetch && git rebase'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias glo='git pull origin'
alias gl='git pull'
alias gb='git branch '
alias gbr='git branch -r'
alias gd='git diff'
alias gco='git checkout '
alias gcob='git checkout -b '
alias gre='git remote'
alias gres='git remote show'
alias glgg='git log --graph --max-count=5 --decorate --pretty="oneline"'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias ggpush='git push origin $(current_branch)'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gcmnv='git commit --no-verify -m'
alias gcanenv='git commit --amend --no-edit --no-verify'

# **Git with fzf**
alias gafzf='git ls-files -m -o --exclude-standard | grep -v "__pycache__" | fzf -m --print0 | xargs -0 -o -t git add'
alias grmfzf='git ls-files -m -o --exclude-standard | fzf -m --print0 | xargs -0 -o -t git rm'
alias grfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore'
alias grsfzf='git diff --name-only | fzf -m --print0 | xargs -0 -o -t git restore --staged'
alias gcofzf='git branch | fzf | xargs git checkout'

# **Git Commit with Ticket ID**
# Function to commit with ticket ID from current branch, with optional push
quick_commit() {
    local branch_name ticket_id commit_message push_flag
    branch_name=$(git branch --show-current)
    ticket_id=$(echo "$branch_name" | awk -F '-' '{print toupper($1"-"$2)}')
    commit_message="$ticket_id: $*"
    push_flag=$1

    if [[ "$push_flag" == "push" ]]; then
        # Remove 'push' from the commit message
        commit_message="$ticket_id: ${*:2}" # take all positional parameters starting from the second one
        git commit --no-verify -m "$commit_message" && git push
    else
        git commit --no-verify -m "$commit_message"
    fi
}

alias gqc='quick_commit'
alias gqcp='quick_commit push'

# **Docker/Kubernetes**
alias d='docker'
alias di='docker images'
alias dps='docker ps'
alias dpa='docker ps -a'
alias dc='docker compose'

# **Utilities**
alias bat='batcat'
alias cat='bat --paging=never'
alias dos="dos2unix"

# **Comments**
# Add comments to explain the purpose of specific aliases or groups of aliases.