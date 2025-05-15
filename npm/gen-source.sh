#!/bin/bash

if [ -d "dist" ]; then
  rm -rf dist
fi

mkdir dist

if [ -d "src" ]; then
  rm -rf src
fi

mkdir src

protoc --plugin=$(npm root)/.bin/protoc-gen-ts_proto \
 --ts_proto_out=src \
 --ts_proto_opt=outputServices=grpc-js \
 --ts_proto_opt=esModuleInterop=true \
 -I=../proto/ ../proto/**/*.proto
