#!/bin/sh -l

echo "Hello sir"
node --version
sudo chown -R $USER '/usr/local/lib/node_modules/insomnia-inso/node_modules'

echo "installing inso"
npm install -g insomnia-inso

echo "inso version"
inso --version

echo "linting"
run: inso lint spec "swagger.json" --ci

echo "Generate declarative config"
inso generate config "swagger.json" --type declarative | tee kong.yml

echo "file:"
cat kong.yml
