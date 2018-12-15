#!/usr/bin/zsh

sudo apt install devilspie -y

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
