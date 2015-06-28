FROM debian:jessie

MAINTAINER Jonathan Huang <jon@levity.io>

RUN apt-get update
RUN apt-get install -y nodejs npm

COPY ./ /src

RUN cd /src; npm install

EXPOSE 8080
CMD ["nodejs", "/src/server.js"]