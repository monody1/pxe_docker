#!/bin/bash

# 启动 dnsmasq 服务
service dnsmasq start

# 启动 apache2 服务
service apache2 start

service squid start
# 防止容器退出，持续运行
tail -f /dev/null

