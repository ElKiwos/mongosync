# syntax=docker/dockerfile:1
FROM debian:bullseye

RUN apt-get update && apt-get install -y wget curl vim procps net-tools
RUN wget -qO- https://fastdl.mongodb.org/tools/mongosync/mongosync-ubuntu2404-x86_64-1.13.0.tgz | tar --transform 's#^mongosync-.*/bin#/usr/bin/#' -xzf - -C / ; rm -rf /mongosync-*; mkdir /data


CMD ["sh","-c", "mongosync --config /data/sync.conf"]
