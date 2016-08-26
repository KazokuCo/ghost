FROM node:4.3
RUN apt-get update -qq && apt-get install unzip

ENV GHOST_VERSION=0.9.0

WORKDIR /srv/ghost
ADD https://ghost.org/zip/ghost-${GHOST_VERSION}.zip ghost.zip
RUN unzip ghost.zip && npm install -q --no-color --production
RUN npm install -q --no-color ghost-s3-storage pg

ADD config.js /srv/ghost/config.js

ENV GHOST_NODE_VERSION_CHECK=false
CMD npm start
