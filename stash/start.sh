#!/usr/bin/env bash 

echo "127.0.0.1     $HOST" >> /etc/hosts

./stash/bin/start-stash.sh -fg
