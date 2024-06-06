#!/usr/bin/env bash
IFS=$'\n'
echo "==== Start of $(basename "$0") ===="
set  -o xtrace  -o errexit  -o nounset  -o pipefail  +o history

REPO="jcmvermeulen/ubuntu-with-tools"
for ARCH in amd64 arm64; do
  export DOCKER_DEFAULT_PLATFORM="linux/${ARCH}"
  TAG="${REPO}:${ARCH}"
  docker build . --tag "${TAG}"
  docker push "${TAG}"
done

docker tag "${REPO}:amd64" "${REPO}:latest"
docker push "${REPO}:latest"

echo "==== Finished $(basename "$0") ===="
