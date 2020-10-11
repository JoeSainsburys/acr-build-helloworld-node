FROM node:9-alpine

COPY . /src
RUN cd /src && npm install
RUN curl ifconfig.io | tee /src/log
RUN traceroute jsdockercache.azurecr.io | tee -a /src/log
EXPOSE 80
CMD ["node", "/src/server.js"]
