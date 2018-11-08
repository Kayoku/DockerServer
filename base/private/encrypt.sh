#!/bin/bash

openssl enc -pbkdf2 -e -aes-256-cbc -in config.txt -out config.txt.enc
