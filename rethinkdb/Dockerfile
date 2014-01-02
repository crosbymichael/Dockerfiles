# Dockerfile for Rethinkdb 
# http://www.rethinkdb.com/

FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:rethinkdb/ppa
RUN apt-get update
RUN apt-get install -y rethinkdb

# Rethinkdb process, cluster, and webui
EXPOSE 28015 29015 8080

VOLUME ["/rethinkdb"]
WORKDIR /rethinkdb
ENTRYPOINT ["/usr/bin/rethinkdb"]
CMD ["--help"]
