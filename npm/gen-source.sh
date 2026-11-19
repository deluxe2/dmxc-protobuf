#!/bin/bash
set -euo pipefail
shopt -s globstar

if [ -d "dist" ]; then
  rm -rf dist
fi

mkdir dist

if [ -d "src" ]; then
  rm -rf src
fi

mkdir src

protoc --plugin=./node_modules/.bin/protoc-gen-ts_proto \
 --ts_proto_out=src \
 --ts_proto_opt=outputServices=grpc-js \
 --ts_proto_opt=esModuleInterop=true \
 --ts_proto_opt=env=node \
 --ts_proto_opt=outputIndex=true \
 -I=../proto/ ../proto/**/*.proto
