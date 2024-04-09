#!/bin/bash

echo "######################"
echo "Go Upgrade Libs"
echo "######################"

# Import the common functions
source ../common/goto_directory.sh

# cd to the golang directory
goto_dir_golang
print_workdir

######################
#Main Program
######################

go get -u ./...