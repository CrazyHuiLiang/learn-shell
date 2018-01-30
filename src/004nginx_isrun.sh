#!/bin/bash

port=$(nmap -sT 120.27.96.39 | grep tcp | grep http | awk '{print $2}')
#使用nmap命令扫描服务器，并截取 http服务的状态，赋予变量port

mkdir ../null/004 &>/dev/null

if [ "$port" == "open" ]
  then
    echo "$(date) httpd is ok!" >> ../null/004/log
  else
    nginx
    echo "$(date)restart httpd !!" >> ../null/004/log
fi


