# node-red
### Ambiente Node-RED vuoto
    docker run -it -p 1880:1880 nodered/node-red
### Ambiente Node-RED vuoto con dashboard
    git clone https://github.com/zeldalegends/node-red.git
    cd node-red
    docker build .
### Ambiente Node-RED vuoto con dashboard e TIG stack
    git clone https://github.com/zeldalegends/node-red.git
    cd node-red
    docker-compose up
### Ambiente Node-RED completo con simulatori OPC UA e Modbus
    git clone https://github.com/zeldalegends/node-red.git
    cd node-red
    sh run.sh
