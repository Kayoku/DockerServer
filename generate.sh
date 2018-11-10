#!/bin/bash

set -e

# Create generate
rm -Rf generate/
mkdir generate/

# Copy docker-compose files
cp -R ./base/nextcloud-comp ./generate
cp -R ./base/proxy-comp ./generate

# Decrypt config and change docker-compose param
if [ ! -f './base/private/config.txt' ]
then
	cd ./base/private/
	./decrypt.sh
	cd -
fi

# Replace all word in ./base/private/config.txt to ./generate/nextcloud-comp/docker-compose.yml
while read line
do
	IFS== read name value <<< $line
	for i in ./generate/nextcloud-comp/docker-compose.yml; do sed -i "s:$name:$value:g" "$i"; done
done < ./base/private/config.txt
