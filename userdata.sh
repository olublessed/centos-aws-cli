#!/usr/bin/env bash

TEMP_FILE=$(mktemp)

if [ -z "$1" ]; then
    echo "No argument provided. Exiting ..."
    exit 1
fi

# Deserialize userdata content into a file and execute
echo "$1" | base64 -d > $TEMP_FILE
bash -x $TEMP_FILE
