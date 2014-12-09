FROM ubuntu:14.10
MAINTAINER Akihiro HARAI

RUN adduser --disabled-password --home=/atom --gecos "" atom
RUN apt-get update
RUN apt-get -y install nodejs npm build-essential libgnome-keyring-dev fakeroot git
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm config set python /usr/bin/python2 -g
RUN npm config set registry https://registry.npmjs.org/
RUN sudo -u atom mkdir -p /atom/atom
WORKDIR /atom/atom

ENTRYPOINT /bin/bash
