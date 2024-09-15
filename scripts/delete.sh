#!/bin/bash

CONTAINER_REGISTRY=${CONTAINER_REGISTRY:-bookandinventory.azurecr.io}
VERSION=${VERSION:-latest}

kubectl delete -f ./scripts/kubernetes/deployment.yaml