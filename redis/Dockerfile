# Dockerfile for redis with config to set data dir to /redis/

FROM johncosta/redis

ADD redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD /usr/bin/redis-server /etc/redis/redis.conf
