#!/bin/bash

openssl enc -pbkdf2 -d -aes-256-cbc -in config.txt.enc -out config.txt 
