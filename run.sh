#!/bin/bash

./generate.sh
docker network create nginx-proxy

cd ./generate/proxy-comp
docker-compose down
docker-compose up -d

cd -
cd ./generate/nextcloud-comp
docker-compose down
docker-compose up -d db
docker-compose up -d
