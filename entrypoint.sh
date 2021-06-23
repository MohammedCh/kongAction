#!/bin/sh -l

echo "Hello sir"
node --version

echo "installing inso"
npm install -g insomnia-inso

echo "linting"
run: inso lint spec "swagger.json" --ci

echo "Generate declarative config"
inso generate config "swagger.json" --type declarative | tee kong.yml

echo "file:"
cat kong.yml
