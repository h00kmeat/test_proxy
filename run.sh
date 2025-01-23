#!/bin/sh

chmod 755 ./socks-proxy
killall socks-proxy
nohup ./socks-proxy socks-proxy.conf &
