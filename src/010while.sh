#!/bin/bash

i=1
s=0
while [ $i -le 100 ]
# 如果变量i的值小于等于100，则执行循环
	do
		s=$(( $s+$i ))
		i=$(( $i+1 ))
	done
echo "The sum is: $s"

