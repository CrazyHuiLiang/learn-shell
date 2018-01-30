#!/bin/bash

i=1
s=0
until [ $i -gt 100 ]
# 循环直到i的值大于100时停止
	do
		s=$(( $s+$i ))
		i=$(( $i+1 ))
	done
echo "The sum is: $s"

