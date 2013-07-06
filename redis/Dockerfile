# Dockerfile for redis with config to set data dir to /redis/

FROM johncosta/redis

EXPOSE 6379

RUN mkdir /redis

ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["--dir", "/redis"]
