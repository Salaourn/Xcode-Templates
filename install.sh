#!/bin/bash

# Paths for Templates and Snippets folders
TEMPLATES_PATH="Templates/"
SNIPPETS_PATH="Snippets/"

# Paths for target directories
TEMPLATES_TARGET="/Users/$(whoami)/Library/Developer/Xcode/Templates/Salaourn"
SNIPPETS_TARGET="/Users/$(whoami)/Library/Developer/Xcode/UserData/CodeSnippets"

# Function for copying templates
copy_templates() {
    mkdir -pv $TEMPLATES_TARGET
    echo "Copying templates..."
    cp -R $TEMPLATES_PATH $TEMPLATES_TARGET
    echo "Template files stored in:"
    echo $TEMPLATES_TARGET
}

# Function for copying snippets
copy_snippets() {
    mkdir -pv $SNIPPETS_TARGET
    echo "Copying snippets..."
    cp -R $SNIPPETS_PATH $SNIPPETS_TARGET
    echo "Snippets stored in:"
    echo $SNIPPETS_TARGET
}

# Checking command line arguments
if [[ "$#" -eq 0 ]]; then
    copy_templates
    copy_snippets
else
    while getopts "ts" option; do
        case "${option}" in
            t) copy_templates ;;
            s) copy_snippets ;;
            *) echo "Invalid option: -${OPTARG}" >&2
               exit 1 ;;
        esac
    done
fi

echo "Operation completed successfully."
echo "Remember to quit Xcode if it's already running."