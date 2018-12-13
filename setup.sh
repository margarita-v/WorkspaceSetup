#!/bin/bash

# Workspace setup for Android developers for OS Ubuntu 18.04

# Install Android Studio and create desktop entry (Configure - Create Desktop Entry)
# Install Lombok plugin (Settings - Plugins - Browse repositories - Lombok Plugin - Install - Restart Android Studio
# Enable Annotation processors:
# Default Settings - Build, execution, deployment - Compiler - Annotation Processors - Enable
# Reopen project and remove from recent to apply changes.

# Add user to sudoers

sudo apt update

# Install git, zsh, neovim, qemu-kvm, java8, aapt
sudo apt install git zsh curl wget neovim qemu-kvm openjdk-8-jdk aapt -y

# Install and setup gradle
wget https://services.gradle.org/distributions/gradle-5.0-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-5.0-bin.zip
rm -rf gradle-5.0-bin.zip

# Install Visual Studio Code
sudo apt install software-properties-common apt-transport-https
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

# Set neovim as default editor
sudo update-alternatives --config editor
# or add to ~/.profile:
# export EDITOR=nvim

# Grant permission to /dev/kvm. Log out and restart after this command
# sudo usermod -aG sudo $USER
sudo adduser $USER kvm

# Git configuration
read -p "Enter your name for a Git account: " gitname
read -p "Enter your email for a Git account: " gitemail
git config --global user.name $gitname
git config --global user.email $gitemail

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ./export-variables.sh
# Reboot your PC to apply changes

# Setup SSH for a Git account
# ssh-keygen
# Add public key to Bitbucket account
# Clone repo via SSH url
# For repo cloned via https: git remote set-url origin <SSH URL>
