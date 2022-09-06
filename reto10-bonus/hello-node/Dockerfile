# load node version
FROM node:fermium-alpine

# create app dir
WORKDIR /opt/hello-node

# install Alpine depends for wait-for-it.sh
RUN apk add --no-cache bash

# install dependencies
COPY package*.json ./
RUN npm install
RUN npm install -g amqplib

#bundle everything
COPY . .

EXPOSE 9443
CMD ["npm", "start"]
