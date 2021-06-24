#!/bin/bash -l

DIRECTORY_FILENAME="$1"


echo "installing inso"
npm install --unsafe-perm -g insomnia-inso

echo "inso version"
inso --version

echo "linting"
inso lint spec "$DIRECTORY_FILENAME"

echo "Generate declarative config"
inso generate config "$DIRECTORY_FILENAME" --type declarative | tee kong.yml

echo "file:"
cat kong.yml
