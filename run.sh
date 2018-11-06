#!/bin/bash

docker network create nginx-proxy

cd proxy-comp
docker-compose down
docker-compose up -d

cd ../nextcloud-comp
docker-compose down
docker-compose up -d db
docker-compose up -d
