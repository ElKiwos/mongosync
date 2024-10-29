# syntax=docker/dockerfile:1
FROM debian:bullseye

# install app dependencies
RUN apt-get update && apt-get install -y wget curl vim
RUN wget -qO- https://fastdl.mongodb.org/tools/mongosync/mongosync-ubuntu2004-x86_64-1.8.1.tgz | tar --transform 's#^mongosync-.*/bin#/usr/bin/#' -xzf - -C / ; rm -rf /mongosync-*
