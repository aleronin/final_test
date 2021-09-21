#!/usr/bin/env bash

set -e


git clone https://github.com/aleronin/final_test my_test_1

cd my_test_1/app/

pylint app.py --errors-only
if [[ $? > 0 ]]; then
  echo "Pylint found an error"
  exit 5
fi
docker build -t aleronin96/picture_test:1.1 .

docker push aleronin96/picture_test:1.1

docker-compose up -d
