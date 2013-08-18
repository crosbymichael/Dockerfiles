FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y git curl oracle-java7-installer

RUN apt-get install -y wget

RUN mkdir /minecraft
RUN wget -O /minecraft/craftbukkit.jar http://cbukk.it/craftbukkit-beta.jar

EXPOSE 25565

CMD (cd /minecraft && java -Xmx1024M -Xms768M -jar craftbukkit.jar nogui)
