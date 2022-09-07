# Solucion reto10 - Bonus

## Solucionar inconvenientes de ejecucion de 4 contenedores, con dependencias entre ellos:

Para ejecutar la solucion solo es necesario iniciar los contenedores con docker-compose:

``` $ cd ./deployment
$ docker-compose up -d
```


Verificar ejecucion de los 4 contenedores:

![dockerImages1](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto10-bonus/assets/reto10-docker_ps.png)


Una vez iniciado, ingresar al navegador del host a la direccion: http://localhost:8080

Ingresar un sabor:


![dockerImages2](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto10-bonus/assets/reto10-browser_window.png)


Verificar que el dato se almacena en la Base de Datos:


![dockerImages3](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto10-bonus/assets/reto10-db_messages.png)


### Algunos ajustes realizados (investigacion de por medio)

* Se agrego script wait-for-it.sh al inicio del contenedor hello-node, para esperar la disponibilidad del servicio RabbitMQ
* Se agrego un "console.log" para verificar que la ejecucion ingresara a la funcion "amqp.connect"
* Se agrego la linea "RUN npm install -g amqplib" al Dockerfile de hello-node
* Se agrego la directiva de configuracion "depend_on" en la creacion de contenedores que lo requerian


Para llegar a estos ajustes, se realizaron varias pruebas con los contenedores. Incluso con la ejecucion individual de alguno de ellos para investigar comportamiento.



### FIN