#!/bin/bash
##### Take user input for later
echo "Enter your Github Email Address"
read ghEmail
echo "Enter your Full Name for Commit History"
read ghFirstAndLastName

##########################
##### INITIAL SETUP ######
##########################

### Installing HomeBrew Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "If that failed, you can run `xcode-select --install` and it will fix the issues with git"
sleep 5

### Installing OhMyZSH for prettier command line interface
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 5

mkdir -p .nvm # makes the directory if it doesn't exist yet

clear
echo "#######################################################"
echo "########## Installing Packages with Brew ##############"
echo "#######################################################"
brew install git wget
brew install --cask warp google-chrome spotify visual-studio-code bartender spectacle alfred slack figma
brew install nvm

### Setup Git Globals from user input
git config --global user.name $ghFirstAndLastName
git config --global user.email $ghEmail
cat ~/.gitconfig

echo "#######################################################"
echo "## Installation Finished. Don't forget to setup NVM! ##"
echo "#######################################################"

exit 0