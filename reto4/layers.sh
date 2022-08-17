#!/bin/bash -x

IMAGE=simple-apache:new
FILTER='first | .RootFS | .Layers | length'

echo $(docker inspect ${IMAGE} | jq -r "${FILTER[@]}")


