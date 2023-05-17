#!/bin/bash

set -e

parent_directory="$(pwd)"

cd "$parent_directory"

for directory in */; do
    cd "$directory"
    if [ -d ".git" ]; then
        echo "Pulling changes in $directory"
        git pull
    fi
    cd "$parent_directory"
done
