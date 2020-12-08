#!/bin/bash

mkdir ./nodered/data
sudo chown -R 1000:1000 .

#docker build -t node-red .
docker-compose up

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
echo "Create a new database ?"
echo "curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"

#docker run -it -p 1880:1880 -v `pwd`:/data -e NODE_RED_ENABLE_SAFE_MODE=true --name nr mynodered
#docker run -it -p 1880:1880 -v ~/.:/data -e NODE_RED_ENABLE_SAFE_MODE=true --name nr mynodered
