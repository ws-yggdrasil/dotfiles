# ~/.config/zsh/lib/functions/projects.zsh
# -------------------------------
# Project templates
# -------------------------------
function create-node-project() {
    if [[ -z "$1" ]]; then
        echo "Usage: create-node-project <project-name>"
        return 1
    fi
    
    mkdir "$1" && cd "$1"
    pnpm init
    echo "node_modules/\n.env\ndist/\n.DS_Store" > .gitignore
    mkdir src test
    touch src/index.ts
    
    pnpm add -D typescript @types/node ts-node nodemon
    pnpm tsc --init
    
    cat > package.json << EOF
{
  "name": "$1",
  "version": "1.0.0",
  "scripts": {
    "dev": "nodemon src/index.ts",
    "build": "tsc",
    "start": "node dist/index.js"
  }
}
EOF

    git init
    git add .
    git commit -m "Initial commit"
}
