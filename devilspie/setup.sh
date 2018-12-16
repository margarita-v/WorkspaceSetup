#!/usr/bin/zsh

# Script for devilspie setup and autorun script activation

# use xprop for creation of ds-files

sudo apt install devilspie -y
DEVILSPIE_DIR_NAME=$HOME/.devilspie
mkdir -p ${DEVILSPIE_DIR_NAME}
cp android-studio.ds ${DEVILSPIE_DIR_NAME}/android-studio.ds

# create aliases for devilspie using
cp .zsh_aliases ~/.zsh_aliases
ZSHRC_FILE_NAME=$HOME/.zshrc
echo "
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
" >> ${ZSHRC_FILE_NAME}
. ${ZSHRC_FILE_NAME}

# create and activate startup script
ANDROID_DEV_SETTINGS_DIR_NAME=$HOME/.android-dev-setup
STARTUP_SCRIPT_FILE_NAME=${ANDROID_DEV_SETTINGS_DIR_NAME}/startup.sh
mkdir -p ${ANDROID_DEV_SETTINGS_DIR_NAME}
cp startup.sh ${STARTUP_SCRIPT_FILE_NAME}
echo "
${STARTUP_SCRIPT_FILE_NAME}" >> ~/.profile
