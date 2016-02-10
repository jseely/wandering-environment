#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Are you ready for this?
sudo apt-get update

# There are always those things we're going to need
sudo apt-get -y install git
sudo apt-get -y install wget

# Let's start off with an awesome new shell!
sudo apt-get -y install zsh
cp $DIR/configs/.zshrc ~/.zshrc
chsh -s $(which zsh)

