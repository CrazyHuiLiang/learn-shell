#!/bin/bash

echo "The current process is $$"
#输出当前进程的PID

find /root -name hello.sh &
#使用find命令在root目目录下查找hello.sh文件
#符号&的意思是把命令放入后台执行
echo "The last one Daemon process is $!"
