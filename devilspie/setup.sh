#!/usr/bin/zsh

# Script for devilspie setup and autorun script activation

# use xprop for creation of ds-files

sudo apt install devilspie -y
mkdir -p ~/.devilspie
cp android-studio.ds ~/.devilspie/android-studio.ds

cp .zsh_aliases ~/.zsh_aliases
echo "
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
" >> ~/.zshrc
. ~/.zshrc

cp startup.sh ~/startup.sh
echo '
~/startup.sh' >> ~/.profile
