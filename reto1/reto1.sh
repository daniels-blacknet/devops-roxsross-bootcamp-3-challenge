#!/bin/bash
# Script con todos los pasos indicados en el Reto 1
# DevOps course - Rossana Suares - @roxsross
echo "Iniciando el contenedor de Ngnix..."
docker run -d --name servidor_web -p 8181:80 nginx
echo "Listo los contenedores que se estan ejecutando"
docker ps
echo "Listo las imagenes disponibles (descargadas y/o construidas)"
docker images
echo "Antes de detener el contenedor, acceder al mismo = http://localhost:8181"
read x
echo "Detengo el contenedor de Nginx"
docker stop servidor_web
echo "Reviso la lista de contenedores en ejecucion"
docker ps
echo "Elimino el contenedor 'servidor_web'"
docker rm servidor_web
echo "Listo todos los contenedores, aun lo que no estan en ejecucion"
docker ps -a
echo "** fin del script **"
