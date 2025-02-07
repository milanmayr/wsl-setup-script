#!/bin/sh

# Install zsh
sudo apt install zsh
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/mmayr/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/mmayr/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Github CLI
brew install gh

