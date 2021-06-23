#!/bin/bash -l

echo "Hello sir"

# echo "install nvm"
# touch ~/.profile
# mkdir ~/.npm-global
# npm config set prefix '~/.npm-global'
# export PATH=~/.npm-global/bin:$PATH
# source ~/.profile

# echo "install nvm"
# # nvm install node 14
# node --version

# echo "change npm's default directory"

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
