#!/bin/bash

COMMAND="cd ~/AndroidStudioProjects/SampleProject && git pull"

# wmctrl -n 2
# firefox &
# /usr/local/android-studio/bin/studio.sh &

gnome-terminal --maximize \
    --tab -e "sh c \"$COMMAND;ls -la;zsh\"" \
    --tab -e "sh -c pwd;zsh\""

# gnome-session-properties
# devilspie -d

# ~/.devilspie/android-studio.ds
# xprop

(if
    (contains (window_property "WM_NAME") "Android Studio")
    (begin
        (set_workspace 2)
        (maximize)
    )
)