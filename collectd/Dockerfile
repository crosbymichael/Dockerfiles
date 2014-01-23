FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y collectd

VOLUME ["/etc/collectd"]
ENTRYPOINT ["collectd", "-f"]
