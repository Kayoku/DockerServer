#!/bin/bash

set -e

# Create generate
rm -Rf generate/
mkdir generate/

# Copy docker-compose files
cp -R ./base/nextcloud-comp ./generate
cp -R ./base/proxy-comp ./generate

# Decrypt config and change docker-compose param
cd ./base/private/
./decrypt.sh
cd -
