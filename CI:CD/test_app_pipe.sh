#!/usr/bin/env bash

set -e

## clone application repository
git clone https://github.com/aleronin/final_test my_test_1

cd my_test_1/app/

## check of errors in code
pylint app.py --errors-only
if [[ $? > 0 ]]; then
  echo "Pylint found an error"
  exit 5
fi

## build of a new image
docker build -t aleronin96/picture_test:1.1 .

## push new-created image to DockerHub
docker push aleronin96/picture_test:1.1

docker-compose up -d
