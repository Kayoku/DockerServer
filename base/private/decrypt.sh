#!/bin/bash

openssl enc -d -aes-256-cbc -in config.txt.enc -out config.txt 
