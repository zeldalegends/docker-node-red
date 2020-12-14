FROM nodered/node-red:latest-12

# Copy _your_ Node-RED project files into place
# NOTE: This will only work if you DO NOT later mount /data as an external volume.
#       If you need to use an external volume for persistence then
#       copy your settings and flows files to that volume instead.
# COPY settings.js /data/settings.js
# COPY flows_cred.json /data/flows_cred.json
# COPY flows.json /data/flows.json

# You should add extra nodes via your package.json file but you can also add them here:
# WORKDIR /usr/src/node-red
RUN npm install node-red-dashboard
RUN npm install node-red-contrib-modbus
RUN npm install node-red-contrib-opcua
RUN npm install node-red-contrib-influxdb
RUN npm install node-red-contrib-mongodb

# RUN npm install node-red-contrib-aedes
RUN npm install node-red-node-dropbox
RUN npm install node-red-node-ui-table
RUN npm install node-red-contrib-ui-scheduler 
RUN npm install node-red-contrib-ui-time-scheduler
RUN npm install node-red-contrib-chronos
RUN npm install node-red-contrib-cron-plus
RUN npm install node-red-contrib-string
