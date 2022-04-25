#!/bin/bash
##### Take user input for later
echo "Enter your Github Email Address [Leave Blank if you don't need to do this]"
read ghEmail
echo "Enter your Full Name for Commit History [Leave Blank if you don't need to do this]"
read ghFirstName ghLastName
echo "What Directory do your want your Projects to live in? DEFAULT: [~/Documents/Dev]"
read devProjectDir

if [ -z "$devProjectDir" ]
then
    devProjectDir="~/Documents/Dev"
fi

echo "##########################"
echo "##### INITIAL SETUP ######"
echo "##########################"

### Installing HomeBrew Package Manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "If that failed, you can run `xcode-select --install` and it will fix the issues with git"
sleep 5

### Installing OhMyZSH for prettier command line interface
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 5

echo "Creating ~/.nvm directory if it doesn't exist"
mkdir -p ~/.nvm # makes the directory if it doesn't exist yet

echo "Creating Directory for dev projects to live in: $devProjectDir"
mkdir -p $devProjectDir
sleep 5

echo "#######################################################"
echo "########## Installing Packages with Brew ##############"
echo "#######################################################"
brew install git wget
brew cask install warp google-chrome spotify visual-studio-code bartender spectacle alfred slack figma mysides
brew install nvm
sleep 5

### Setup Git Globals from user input
if [ -z "$ghEmail" ]
then
    echo "Github Email was empty. Skipping Github config setup"
else 
    git config --global user.email $ghEmail
    if [ -z "$ghFirstName" ]
    then
        echo "Github Name was empty skipping Github Name Config Setup"
    else 
        git config --global user.name $ghFirstName $ghLastName
fi
cat ~/.gitconfig
sleep 5

echo "#######################################################"
echo "## Installation Finished. Don't forget to setup NVM! ##"
echo "#######################################################"

# Setting default browser as Google Chrome
open -a "Google Chrome" --args --make-default-browser
sleep 5 

echo "########################################################"
echo "## If NVM Setup properly, these commands will run fine #"
echo "########################################################"

echo "Setting nvm to lts node version"
nvm install --lts

echo "Installing node 14 as a fallback version"
nvm install 14

nvm use --lts 

node -v && npm -v

exit 0