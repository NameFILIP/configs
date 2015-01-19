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
npm install npm -g
npm install jasmine -g

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Terminal
# Make Homebrew default
# Change font to Monaco 11 pt, Line spacing 1.1
# Change Window Size to 160x40
# Change Background to Opacity 79, Blur 0
