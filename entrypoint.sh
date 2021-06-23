#!/bin/sh -l

echo "Hello sir"
node --version

echo "installing inso"
sudo npm install -g insomnia-inso --unsafe-perm

echo "inso version"
inso --version

echo "linting"
run: inso lint spec "swagger.json" --ci

echo "Generate declarative config"
inso generate config "swagger.json" --type declarative | tee kong.yml

echo "file:"
cat kong.yml
