#! /bin/bash

pip install sphinx

# Prompt the user for project details
read -p "Enter the project name: " project_name
read -p "Enter the author name: " author_name
read -p "Enter the version number: " version_number

# Run sphinx-quickstart with provided project details
sphinx-quickstart \
    --project="$project_name" \
    --author="$author_name" \
    --version="$version_number"

cp ./_build/html/index.html ./index.html