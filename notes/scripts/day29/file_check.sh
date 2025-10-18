#!/bin/bash
# This script checks if a file exists

read -p "Enter filename: " file

if [ -f "$file" ]; then
    echo "File '$file' exists."
else
    echo "File '$file' does not exist."
fi
