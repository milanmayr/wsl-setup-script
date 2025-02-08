#!/bin/sh

sudo apt update

# Install zsh
sudo apt install zsh -y
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /home/mmayr/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/mmayr/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install some basics
sudo apt install build-essential zlib1g -y

# Install Github CLI
brew install gh

