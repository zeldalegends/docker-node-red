#!/bin/bash

# Modbus TCP/IP and OPC UA sim server
docker run --rm -d -p 4840:4840 --name opcua-server-demo -v ~/opcua-certs:/certificates bodiroga/opcua-server-demo
docker run --rm -d -p 5020:5020 oitc/modbus-server:latest
# docker run -it --rm oitc/modbus-client:latest -s 127.0.0.1 -p 5020 -t 4 -r 0 -l 10

mkdir ./nodered/data
sudo chown -R 1000:1000 .

#docker build -t node-red .
docker-compose -f node-red.yml up

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
echo "Create a new database ?"
echo "curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"

#docker run -it -p 1880:1880 -v `pwd`:/data -e NODE_RED_ENABLE_SAFE_MODE=true --name nr mynodered
#docker run -it -p 1880:1880 -v ~/.:/data -e NODE_RED_ENABLE_SAFE_MODE=true --name nr mynodered
