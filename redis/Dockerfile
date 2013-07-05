# Dockerfile for redis with config to set data dir to /redis/

FROM johncosta/redis

ADD redis.conf /etc/redis/redis.conf

EXPOSE 6379

RUN mkdir /redis

ENTRYPOINT ["/usr/bin/redis-server"]
CMD ["/etc/redis/redis.conf"]
