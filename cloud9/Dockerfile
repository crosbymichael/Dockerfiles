# Dockerfile for cloud9

FROM shykes/nodejs

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y openssh-server git-core libxml2-dev curl python build-essential make gcc

RUN git clone git://github.com/ajaxorg/cloud9.git

RUN (cd cloud9/ && npm install)
EXPOSE 3131

CMD /cloud9/bin/cloud9.sh -l 0.0.0.0
