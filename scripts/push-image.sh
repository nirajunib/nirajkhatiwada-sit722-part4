#!/bin/bash

set -u

: "${CONTAINER_REGISTRY:=bookandinventory.azurecr.io}"
: "${VERSION:=latest}"
: "${REGISTRY_UN:=bookandinventory}"
: "${REGISTRY_PW:=redacted}"

set -e

echo "$REGISTRY_PW" | docker login "$CONTAINER_REGISTRY" --username "$REGISTRY_UN" --password-stdin

docker push "$CONTAINER_REGISTRY/book:$VERSION"
docker push "$CONTAINER_REGISTRY/inventory:$VERSION"
