FROM node:alpine

ADD package.json /dy/package.json

ADD package-lock.json /dy/package-lock.json

ADD server/ /dy/server

RUN cd /dy && npm install

WORKDIR /dy/server

EXPOSE 6565

CMD node server.js
