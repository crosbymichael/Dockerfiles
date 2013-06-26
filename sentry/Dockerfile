# Dockerfile for sentry

FROM ubuntu

MAINTAINER Michael Crosby

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y openssh-server git-core libxml2-dev curl python build-essential make gcc python-dev wget
RUN apt-get install -y postgresql-client-9.1 postgresql-client-common libpq5
RUN apt-get install -y libpq-dev

RUN wget http://python-distribute.org/distribute_setup.py 
RUN python distribute_setup.py

RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py 
RUN python get-pip.py

RUN pip install psycopg2
RUN pip install sentry

RUN apt-get install -y language-pack-en
RUN echo "export LANGUAGE=en_US.UTF-8" >> /etc/bash.bashrc
RUN echo "export LANG=en_US.UTF-8" >> /etc/bash.bashrc
RUN echo "export LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

EXPOSE 9000

ADD sentry.conf.py /sentry.conf.py

CMD /usr/local/bin/sentry --config=/sentry.conf.py start
