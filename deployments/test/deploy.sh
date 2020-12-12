#!/usr/bin/env sh

docker-compose pull
docker-compose down -v
docker-compose up -d -V --remove-orphans