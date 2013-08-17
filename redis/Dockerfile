FROM johncosta/redis

EXPOSE 6379

RUN mkdir /redis

ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["--dir", "/redis"]
