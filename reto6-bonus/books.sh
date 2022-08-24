#!/bin/bash

echo "########### Loading data to Mongo DB ###########"
mongoimport --jsonArray --db Library --collection books --file /docker-entrypoint-initdb.d/books.json
