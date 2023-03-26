#!/bin/sh
cp -f /sockd.conf /etc/sockd.conf 

adduser -D -H -s /sbin/nologin "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd

exec "$@"