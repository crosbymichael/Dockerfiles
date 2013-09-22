# Dockerfile for go 1.1.2 cross compile

FROM ubuntu

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y mercurial git-core

RUN hg clone https://code.google.com/p/go
RUN cd /go && hg update go1.1.2

ENV GOROOT /go
ENV GOBIN /go/bin

RUN apt-get install -y gcc g++ make build-essential 

RUN cd /go/src && ./all.bash
ENV PATH $PATH:/go/bin
RUN /bin/bash -c "git clone git://github.com/davecheney/golang-crosscompile.git && source golang-crosscompile/crosscompile.bash && go-crosscompile-build-all"

# Do some cool stuff here to have a container produce binaries for platforms 
