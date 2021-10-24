# Install AndroidStudio manually.
# Accept the license:
cd ~/Library/Android/sdk/tools/bin/
./sdkmanager --licenses

# Instal VSCode manually.
# Setup launch from command line https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install git, neovim
brew install git neovim

# Git configuration
read -p "Enter your name for a Git account: " gitname
read -p "Enter your email for a Git account: " gitemail
git config --global user.name ${gitname}
git config --global user.email ${gitemail}

# Install Oh My Zsh (same for Linux)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Java via sdkman https://sdkman.io/install
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk list java
# For example
sdk install java 8.312.07.1-amzn
# sdk default java 8.312.07.1-amzn
sdk install java 11.0.12.7.2-amzn
sdk current java

# Setup SSH for a Git account
# ssh-keygen
# Add public key to Github account
# cat .ssh/id_rsa.pub