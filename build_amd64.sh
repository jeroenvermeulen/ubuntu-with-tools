#!/usr/bin/env bash
IFS=$'\n'
echo "==== Start of $(basename "$0") ===="
set  -o xtrace  -o errexit  -o nounset  -o pipefail  +o history

export DOCKER_DEFAULT_PLATFORM="linux/amd64"
TAG="jcmvermeulen/ubuntu-with-tools"

docker build . --tag "${TAG}"
docker push "${TAG}"

echo "==== Finished $(basename "$0") ===="
