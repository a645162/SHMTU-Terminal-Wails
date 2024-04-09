#!/bin/bash

echo "######################"

echo "Go Tidy"
echo "######################"

# Import the common functions
source ../common/goto_directory.sh

# cd to the golang directory
goto_dir_frontend
print_workdir

######################
#Main Program
######################

# Check is 'ncu' installed
if ! command -v ncu &> /dev/null
then
    echo "npm-check-updates is not installed. Installing..."
    npm install -g npm-check-updates
fi

ncu -u
