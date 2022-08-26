#!/bin/bash
echo "Iniciando contenedores MongoDB y MongoExpress..."
echo .
docker-compose up -d
echo .
echo "Esperando a que esten activos..."
sleep 5
echo "Conectarse a la URL: http://localhost:8081 para acceder a MongoExpress"
echo "Una vez que haya verificado, presione enter para continuar y apagar los contenedores"
read x
echo .
docker-compose down
echo .
echo .
echo "Comienza segundo ejercicio..."
echo "Iniciando contenedor Nginx..."
docker run -d -p 9999:80 --name bootcamp-web danielsanti/reto6-nginx:0.0.1
echo .
echo .
echo "Compruebe acceso al server web via: http://localhost:9999"
echo "Una vez verificado, presione enter"
read x
echo "Apagando contenedor y eliminando imagen..."
docker stop bootcamp-web
docker rm bootcamp-web
echo .
echo .
echo "Eliminando imagenes del server local..."
docker rmi mongo:latest danielsanti/reto6-nginx:0.0.1 mongo-express:latest
echo .
echo "Proceso terminado!"

