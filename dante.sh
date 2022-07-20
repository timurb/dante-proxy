#!/bin/sh

MYIP="$(/sbin/ip a show dev eth0  | grep inet | awk '{print $2}' | sed 's|/.*$||')"

sed -i "s|MYIP|$MYIP|" /etc/danted.conf

exec danted
