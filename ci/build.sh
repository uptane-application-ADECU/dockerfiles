#!/usr/bin/env bash

set -xeou pipefail

BUILD_NR=$1; shift
IMG=uptane/ci:$BUILD_NR

docker build -t $IMG -f Dockerfile .
docker push $IMG
