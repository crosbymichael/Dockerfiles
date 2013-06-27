# Dockerfile for stash

FROM ubuntu

MAINTAINER Michael Crosby http://crosbymichael.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y git curl oracle-java7-installer
RUN mkdir /stash-home

ADD stash/ /stash/

ENV STASH_HOME /stash-home
EXPOSE 7990

CMD /stash/bin/start-stash.sh -fg
