#!/bin/bash

# Script for simple searching strings in Android project.
# Move this file into AndroidStudioProjects folder.

USAGE="Usage: find <project_name> <searched_string> <options> [--help]"
INFO="Find string in Android project."

if [[ $# < 2 || $1 == '--help' ]]; then
	echo ${USAGE}
	echo ${INFO}
else
	grep --color -rnw $1 -e $2 $3
fi
