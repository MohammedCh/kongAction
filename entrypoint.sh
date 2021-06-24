#!/bin/bash -l

echo "Hello sir"

cd ..
cd ..

echo "installing inso"
npm install --unsafe-perm -g insomnia-inso

echo "inso version"
inso --version

echo "linting"
inso lint spec "swagger.json"

echo "Generate declarative config"
inso generate config "swagger.json" --type declarative | tee kong.yml

echo "file:"
cat kong.yml
