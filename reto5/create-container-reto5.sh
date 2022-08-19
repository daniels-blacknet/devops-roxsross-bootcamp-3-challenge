#!/bin/bash
## Creo contenedor...
cd ./hello-bootcamp
docker build -t hellolemoncoder:latest .
cd ..
docker tag hellolemoncoder:latest danielsanti/hellolemoncoder:latest
docker push danielsanti/hellolemoncoder:latest

