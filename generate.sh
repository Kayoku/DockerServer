#!/bin/bash

set -e

# Create generate
echo -n "remove generate/ directory..."
rm -Rf generate/
echo " done"
echo -n "create new generate/ directory..."
mkdir generate/
echo " done"

# Copy docker-compose files
echo -n "copy docker-compose..."
cp -R ./base/nextcloud-comp ./generate
cp -R ./base/proxy-comp ./generate
echo " done"

# Decrypt config and change docker-compose param
echo -n "decrypt config file..."
if [ ! -f './base/private/config.txt' ]
then
	cd ./base/private/
	./decrypt.sh
	cd -
	echo " done"
else
	echo " already done"
fi

# Replace all word in ./base/private/config.txt to ./generate/nextcloud-comp/docker-compose.yml
echo -n "replace variables..."
while read line
do
	IFS== read name value <<< $line
	for i in ./generate/nextcloud-comp/docker-compose.yml; do sed -i "s:$name:$value:g" "$i"; done
done < ./base/private/config.txt
echo " done"
