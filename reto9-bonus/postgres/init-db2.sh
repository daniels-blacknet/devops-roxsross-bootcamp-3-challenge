#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<EOSQL
    CREATE USER myapp;
    ALTER USER myapp WITH PASSWORD 'myapp123';
    CREATE DATABASE myappdb;
    GRANT ALL PRIVILEGES ON DATABASE myappdb TO myapp;
    
EOSQL

psql -v ON_ERROR_STOP=1 --username "myapp" --dbname "myappdb" <<EOSQL

    \c myappdb

    CREATE TABLE tabla (
        id integer NOT NULL,
        nombre varchar(24),
        detalle varchar(64)
    );

    INSERT INTO tabla VALUES(1, 't1', 'Tabla 1');
    INSERT INTO tabla VALUES(2,'t2' , 'Tabla 2');

EOSQL