FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

RUN apt-get install -y openssh-server git-core libxml2-dev curl python build-essential make gcc python-dev wget libsqlite3-dev sqlite3
RUN apt-get install -y postgresql-client-9.1 postgresql-client-common libpq5
RUN apt-get install -y libpq-dev

RUN wget http://python-distribute.org/distribute_setup.py 
RUN python distribute_setup.py

RUN wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py 
RUN python get-pip.py

RUN apt-get install -y libfreetype6 libfreetype6-dev
RUN apt-get install -y python-imaging libpng-dev 
RUN apt-get install -y libzmq-dev

RUN pip install pyzmq
RUN pip install numpy
RUN pip install matplotlib
RUN pip install pandas
RUN pip install jinja2
RUN pip install ipython

EXPOSE 8888

CMD ipython notebook --pylab=inline --ip=* --MappingKernelManager.time_to_dead=10 --MappingKernelManager.first_beat=3
