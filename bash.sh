#! /bin/bash

pip install sphinx

project_name=$1
author_name=$2
version_number=$3


# Run sphinx-quickstart with provided project details
sphinx-quickstart --quiet --project=PROJECT=$project_name --author=$author_name --version=$version_number --language=en 

cp ./_build/html/index.html ./index.html