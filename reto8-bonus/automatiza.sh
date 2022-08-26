#!/bin/bash
echo "Iniciando reto8-bonus..."
echo "Descargar proyecto original desde repo de RoxsRoss..."
echo .
git clone https://github.com/roxsross/pokepy
echo .
echo "Cambiando a carpeta del proyecto..."
cd pokepy
echo .
echo "Construir imagen del contenedor..."
sed -i "s/flask==1.1.1/flask==2.0.2/1" requirements.txt
echo .
docker build -t danielsanti/pokepy-ejemplo:0.1.0 .
echo .
echo "Listar imagenes actuales. Debe existir la imagen danielsanti/pokepy-ejemplo:0.1.0"
docker images
echo .
echo "Iniciar un contenedor con la imagen creada..."
docker run -d -p 5000:5000 --name pokepy-ejemplo danielsanti/pokepy-ejemplo:0.1.0
echo .
echo "Probar acceso al contenedor via URL: http://localhost:5000"
echo "Cuando lo hay echo, presione enter"
read x
echo .
echo "Subir la imagen a Registry de Docker Hub"
docker push danielsanti/pokepy-ejemplo:0.1.0
echo .
echo "Detener el contenedor, borrar contenedor y eliminar imagen del sistema local"
docker stop pokepy-ejemplo
docker rm pokepy-ejemplo
docker rmi danielsanti/pokepy-ejemplo:0.1.0
docker rmi python:3
echo .
echo "Elimino carpeta clonada del proyecto original..."
cd ..
rm -rf pokepy
echo .
echo "Proceso FINALIZADO!"
