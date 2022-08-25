# Solucion reto6 - Bonus 1

## Ejercicio 1: Crear contenedores MongoDB y MongoDB Express

Se crea archivo [docker-compose.yml](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/docker-compose.yml) para definir las dos imagenes que es ejecutaran.
Se crea [script](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/books.sh) en bash para la importacion de datos en la DB Library y la coleccion books.

![DockerRunningME](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/assets/reto6-docker_compose_running.png)

Se verifica mediante la herramienta MongoDB Express la existencia de la base de datos y su correspondiente coleccion:

![DockerMongoDBExpress](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/assets/reto6-mongo_import_results.png)


## Ejercicio 2: Crear contenedor Nginx con contenido especifico

Se crea [Dockerfile](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/Dockerfile) y se construye la imagen.

Se levanta un contenedor con la imagen creada, sirviendo los archivos de la carpeta bootcamp-web:

![nginxRunning](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/assets/reto6-nginx_running.png)

Se verifica que el contenido de la carpeta "/usr/share/nginx/html/" en el contenedor posea los archivos correctos:

![nginxFolder](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/assets/reto6-nginx_contenido.png)


__NOTA:__ Adicionalmente se subio la imagen al registry de DockerHub.


## Ejercicio 2: Eliminar contenedores e imagenes del sistema

![delImagesContainers](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto6-bonus/assets/reto6-eliminar_contenedores_imagenes.png)



