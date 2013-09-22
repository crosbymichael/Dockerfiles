# Build redis from source
# Make sure you have the redis source code checked out in
# the same directory as this Dockerfile
FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y gcc make g++ build-essential libc6-dev tcl

ADD . /redis

RUN (cd /redis && make)
RUN (cd /redis && make test)

RUN mkdir -p /redis-data
VOLUME ["/redis-data"]
EXPOSE 6379

ENTRYPOINT ["/redis/src/redis-server"]
CMD ["--dir", "/redis-data"]
