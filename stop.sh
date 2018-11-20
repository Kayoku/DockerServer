#!/bin/bash

cd ./generate/proxy-comp
docker-compose down

cd -
cd ./generate/nextcloud-comp
docker-compose down
