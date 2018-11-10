#!/bin/bash

set -e

filename=$1

echo "Restore backup $filename..."
sudo tar --same-owner -xjpf $filename
