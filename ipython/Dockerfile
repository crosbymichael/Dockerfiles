FROM crosbymichael/python

RUN apt-get update
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

ENTRYPOINT ["ipython"]
CMD ["notebook", "--pylab=inline", "--ip=*"]
