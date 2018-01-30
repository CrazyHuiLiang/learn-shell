#!/bin/bash
s=0
for((i=1;i<=100;i++))
  do
    s=$(($s+$i))
  done
echo "The sum of 1+2+...+100 is: $s"
