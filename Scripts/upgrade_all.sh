#!/bin/bash

echo "======================"
echo "Upgrade All"
echo "======================"

scripts_dir=$(pwd)
######################
echo "======================"
echo "Golang"
echo "======================"
cd "$scripts_dir" || exit
cd "go/" || exit

bash ./*.sh

######################
echo "======================"
echo "Frontend"
echo "======================"
cd "$scripts_dir" || exit
cd "frontend/" || exit

bash ./*.sh
