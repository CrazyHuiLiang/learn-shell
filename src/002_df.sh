#!/bin/bash
#统计根分区使用率
filesystom="/dev/disk1s1"
if [ $1 ];then
  filesystom=$1
fi

rate=$(df -h | grep $filesystom | awk '{print $5}' | cut -d "%" -f 1 )

echo "$filesystom's rate is: $rate%"

#把根分区使用率作为变量值赋予变量rate
if [ $rate -ge 80 ]
  then
    echo "Warning! $filesystom is full !"
fi




