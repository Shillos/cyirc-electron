#!/bin/bash
set -e
set -x
git init
git clone https://github.com/kiwiirc/kiwiirc.git
cd ./kiwiirc/
yarn install && yarn build
mv ./dist ../client
cd ..
cp client-defaults/config.json client/static/config.json
cp client-defaults/package.json client/package.json
cp client-defaults/main.js client/main.js
cp client-defaults/cyirclogo.png client/cyirclogo.png
cp -r icons/ client/icons
cp -r client-defaults/img client/img
cp -r client-defaults/plugins client/plugins
cd client/
npm install
