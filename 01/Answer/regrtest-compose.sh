#!/bin/sh

docker run -t --rm -w /work -v $(pwd):/work node:6.9.1 npm install

docker-compose -f docker-compose.yml up -d db web

docker-compose -f docker-compose.yml up test

docker-compose -f docker-compose.yml down

