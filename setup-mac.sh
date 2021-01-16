#!/bin/bash

# Install XCode ?

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Git
git config --global alias.slog 'log -n 10 --pretty=oneline --abbrev-commit'

git config --global core.autocrlf input
git config --global credential.helper osxkeychain

# Node
brew install node

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Terminal
# Make Homebrew default
# Change font to Monaco 11 pt, Line spacing 1.1
# Change Window Size to 160x40
# Change Background to Opacity 79, Blur 0

# .bash_profile
cat > $HOME/.bash_profile <<DELIM

# Aliases
alias ll='ls -lhA'
alias sd='say done'

# Git Aliases
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gk='git checkout'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias gd='git diff'

# line and name searches
line_func() { grep -rnIi "$1" . --color; }
name_func() { find . -name "*" | grep "$1" --color; }
alias line=line_func
alias name=name_func
DELIM

brew install the_silver_searcher

# Change Terminal prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF=$'\e[0m'
COLOR_USR=$'\e[38;5;243m'
COLOR_DIR=$'\e[38;5;197m'
COLOR_GIT=$'\e[38;5;39m'
setopt PROMPT_SUBST
PROMPT='${COLOR_USR}%n ${COLOR_DIR}%~%f ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} -> '

# Install VS Code and its Shell bindings
