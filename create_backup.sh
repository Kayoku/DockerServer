#!/bin/bash

timestamp=$(date +"%s")
echo "Create backup $timestamp..."
# Save: ./nextcloud/html/config
#       ./nextcloud/html/data
#       ./nextcloud/html/themes
#       ./nextcloud/db
#       ./proxy/certs
sudo tar -cjpf backup-$timestamp.tar.bz2 nextcloud/html/config nextcloud/html/data nextcloud/html/themes nextcloud/db proxy/certs
