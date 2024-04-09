#!/bin/bash

current_dir=$(pwd)
scripts_dir=$(dirname "$current_dir")
base_dir=$(dirname "$scripts_dir")

function print_workdir() {
    echo "Work directory:"
    pwd
}

function goto_directory() {
  cd "$base_dir" || exit
}

function goto_dir_golang() {
    goto_directory

    cd "shmtu-terminal-wails/" || exit
}

function goto_dir_frontend() {
    goto_directory

    cd "shmtu-terminal-wails/frontend/" || exit
}
