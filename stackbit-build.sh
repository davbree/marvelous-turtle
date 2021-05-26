#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://66871be1f636.ngrok.io/pull/60ae208cba459b95e4d7880c

# build site
hugo

echo "stackbit-build.sh: finished build"
