#!/bin/sh
#
docker run -d \
  --name dns-server \
  --restart=always \
  -p 53:53/udp \
  -p 53:53/tcp \
  -v /data/docker/dns-server/config:/etc/bind \
  -v /data/docker/dns-server/records:/etc/bind/records \
  -v /data/docker/dns-server/cache:/var/cache/bind \
  hub.fast360.xyz/ubuntu/bind9:latest
