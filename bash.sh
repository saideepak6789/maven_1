#! /bin/bash

pip install sphinx

project_name=$1
author_name=$2
version_number=$3

python -m sphinx.cmd.quickstart
# Run sphinx-quickstart with provided project details
# -q -p $project_name -a $author_name -v $version_number -l en 

cp ./_build/html/index.html ./index.html