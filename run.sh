#!/bin/sh

chmod 755 ./socks5
killall socks5
nohup ./socks5 -a 192.168.109.211 -p 1111 &
