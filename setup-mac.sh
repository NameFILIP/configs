#!/bin/bash

# Install XCode ?

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# Git
brew install git

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

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
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

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
