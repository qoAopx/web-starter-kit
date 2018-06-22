FROM node:latest
MAINTAINER qoAop

RUN mkdir /web-starter-kit
RUN apt-get update
RUN apt-get -y install vim
RUN npm update --global npm
RUN npm install --global gulp-cli
RUN npm install --global babel-cli
RUN npm install --global babel-preset-env

ADD ./entrypoint.sh /entrypoint.sh
