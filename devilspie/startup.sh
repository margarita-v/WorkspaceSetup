#!/bin/bash

# Autorun script for initial system settings when user is logged in

COMMAND="cd ~/AndroidStudioProjects/SampleProject && git pull"

# create two terminal tabs
# wmctrl -n 2

# Startup applicaitons
# gnome-session-properties
# OR:
# firefox &
# /usr/local/android-studio/bin/studio.sh &

gnome-terminal --maximize \
    --tab -e "sh -c \"$COMMAND;ls -la;zsh\"" \
    --tab -e "sh -c \"pwd;zsh\""