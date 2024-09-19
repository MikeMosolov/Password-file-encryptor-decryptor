#!/bin/bash

IN_FILE=$1
OUT_FILE=$2
OPTION=$3

if [[ "$OPTION" == "dec" ]]; then
	openssl enc -aes-256-ctr -pbkdf2 -d -a -in "$IN_FILE" -out "$OUT_FILE"
	rm "$1"
elif [[ "$OPTION" == "enc" ]]; then
	openssl enc -aes-256-ctr -pbkdf2 -e -a -in "$IN_FILE" -out "$OUT_FILE"
	rm "$1"
fi
