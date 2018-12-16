#!/bin/bash

# Autorun script for initial system settings when user is logged in

# List of commands which will be performed in separate terminal tabs
declare -a COMMANDS_ARRAY=(\
	"cd ~/WorkspaceSetup && git pull"\
	"pwd"\
)

get_part_of_terminal_command() {
	: '
		Function which returns command for one of the terminal tabs
	'
	echo ' --tab -e "sh -c \"'$@';zsh\""'
}

COMMAND="gnome-terminal --maximize "
SIZE=`expr ${#COMMANDS_ARRAY[@]} - 1`
for i in $(seq 0 ${SIZE}); do
	COMMAND+=`get_part_of_terminal_command ${COMMANDS_ARRAY[i]}`
done
sh -c "$COMMAND"
