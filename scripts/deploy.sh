#!/bin/bash

CONTAINER_REGISTRY=${CONTAINER_REGISTRY:-bookandinventory.azurecr.io}
VERSION=${VERSION:-latest}

kubectl apply -f ./scripts/kubernetes/deployment.yaml
