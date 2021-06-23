#!/bin/sh -l

echo "Hello sir"
node --version

echo "change npm's default directory"
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile

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
