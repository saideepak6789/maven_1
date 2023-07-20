#! /bin/bash

pip install sphinx

project_name=$1
author_name=$2
version_number=$3


# Run sphinx-quickstart with provided project details
sphinx-quickstart -p $project_name -a $author_name -v $version_number -l en -q

cp ./_build/html/index.html ./index.html