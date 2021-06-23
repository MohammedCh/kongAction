#!/bin/sh -l

echo "Hello sir"

echo "install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "install nvm"
nvm install node 14
node --version

# echo "change npm's default directory"


# echo "installing inso"
# npm install -g insomnia-inso

# echo "inso version"
# inso --version

# echo "linting"
# run: inso lint spec "swagger.json" --ci

# echo "Generate declarative config"
# inso generate config "swagger.json" --type declarative | tee kong.yml

# echo "file:"
# cat kong.yml
