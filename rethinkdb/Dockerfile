# Dockerfile for rethinkdb

FROM ubuntu

MAINTAINER Michael Crosby http://crosbymichael.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:rethinkdb/ppa
RUN apt-get update
RUN apt-get install -y rethinkdb

EXPOSE 28015
EXPOSE 8080

CMD /usr/bin/rethinkdb --bind all
