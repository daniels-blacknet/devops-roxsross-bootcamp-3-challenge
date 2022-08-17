#!/bin/bash
echo -n "Cantidad de capas en container $1: "
docker image inspect $1 -f '{{.RootFS.Layers}}' | wc -w

