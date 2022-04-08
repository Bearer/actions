#!/bin/bash
set -e

echo "Using version ${VERSION}"

curl https://bearer-cli-binaries.s3.eu-west-1.amazonaws.com/${VERSION}/bearer-broker_linux_amd64.zip --output bearer.zip

unzip bearer.zip

chmod u+x -R bearer-broker_linux_amd64/

cd bearer-broker_linux_amd64/
./broker
