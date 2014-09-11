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
# - setup kafka 0.8.x straight from their mirror
#
RUN wget -q -O - http://apache.mirrors.pair.com/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1.tgz | tar -C /opt -xz

#
# - start kakfa
#
CMD /opt/kafka_2.9.2-0.8.1.1/bin/kafka-server-start.sh /opt/kafka_2.9.2-0.8.1.1/config/server.properties