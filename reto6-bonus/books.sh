#!/bin/bash

echo "########### Loading data to Mongo DB ###########"
# No funca:
##mongoimport --jsonArray --db Library --collection books -u root -p toor -authenticationDatabase admin /docker-entrypoint-initdb.d/books.json
mongoimport --host 127.0.0.1 --db Library --collection books --type json -u root -p Aa123456 --authenticationDatabase=admin --file /docker-entrypoint-initdb.d/books.json
echo "########### Loaded data to Mongo DB Library DB, books collection ############"
