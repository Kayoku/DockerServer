#!/bin/bash

openssl enc -e -aes-256-cbc -in config.txt -out config.txt.enc
