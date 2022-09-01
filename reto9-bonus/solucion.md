# Solucion reto9 - Bonus

## Crear contenedore basados en postgreSQL y myapp (python):

Como primer paso, se procedio a crar las imagenes que seran utilizadas para la solucion:

### PostgreSQL

1) Se creo nueovo archivo init-db2.sh basado en init-db.sh, agregando linea para asignar password al usuario myapp
2) Tambien se quito un guion que existia al final de la instruccion psql: `<<-EOSQL` por `<<EOSQL`
3) Se modifico el archivo Dockerfile agregando las variables de entorno para el usuario y contrasenia del motor (OSTGRES_USER y POSTGRES_PASSWORD), y apuntando al archivo init-db2.sh

### MyApp

1) Se modifico el codigo de la funcion principal home(), colocando la linea de creacion de la conexion a la base antes de la instruccion "try:"

### Construccion de imagenes de contenedores:

![dockerImages1](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto9-bonus/assets/reto9-docker_images.png)

### Creacion del archivo docker-compose.yml

```
version: '3.1'

services:

  postgres:
    image: postgres-myapp:0.0.1
#    restart: always
    environment:
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: password123
    ports:
      - 5432:5432

  myapp:
    image: myapp:0.0.1
#    restart: always
    depends_on:
      - postgres
#    command: ["./wait-for-it.sh", "postgres:5432", "--", "python", "myapp.py"]
    ports:
      - 5000:5000
    environment:
      POSTGRES_DB: myappdb
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: password123
      POSTGRES_HOST: postgres
      POSTGRES_PORT: 5432

```

### Ejecucion de la solucion:

![dockerComposerUP](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto9-bonus/assets/reto9-docker_compose_up.png)

### Acceso a la aplicacion mediante navegador en maquina host:


![BrowserAccess1](https://github.com/daniels-blacknet/devops-roxsross-bootcamp-3-challenge/blob/master/reto9-bonus/assets/reto9-browser_access.png)




### FIN