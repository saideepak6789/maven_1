#! /bin/bash

pip install sphinx

project_name=$1
author_name=$2
version_number=$3


# Run sphinx-quickstart with provided project details
sphinx-quickstart \
  --project="$project_name" \
  --author="$author_name" \
  --sep \
  --dot=_ \
  --no-batchfile \
  --quiet

make html

cp -r ./build/html ./

docker build -t document_job:latest .

docker run -d --name document-job -h doc-job --net Home --ip 192.168.1.114 document_job:latest