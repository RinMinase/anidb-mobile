#!/usr/bin/env bash

if ! [ -x "$(command -v yarn)" ]; then
  echo 'Error: yarn is not installed.' >&2
  exit 1
fi

yarn install --frozen-lockfile

cp package.json package.json.bak

./node_modules/.bin/react-native upgrade --legacy true

rm -rf __tests__
rm .gitattributes .prettierrc.js .watchmanconfig babel.config.js

rm package.json
mv package.json.bak package.json
