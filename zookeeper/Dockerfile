FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive

#
# - update our repo
#
RUN apt-get -y update
RUN apt-get -y upgrade

#
# - install jdk8 from oracle
#
RUN apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

#
# - remove defunct packages
#
RUN apt-get -y autoremove

#
# - setup zk 3.4.5 straight from their mirror
#
RUN wget -q -O - http://mirrors.sonic.net/apache/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz | tar -C /opt -xz
RUN mkdir /var/lib/zookeeper


#
# - start zookeeper
#
CMD /opt/zookeeper-3.4.5/bin/zookeeper-server-start.sh /opt/zookeeper-3.4.5/config/zookeeper.properties
