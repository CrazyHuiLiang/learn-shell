#!/bin/bash

echo "you want to Beijing,please input 1"
echo "you want to Shanghai,please input 2"
echo "you want to Chengdu,please input 3"

read -t 30 -p "please input your chooise:" cho

case $cho in
  1)
    echo "Beijing"
  ;;
  2)
    echo "Shanghai"
  ;;
  3)
    echo "Chengdu"
  ;;
  *)
    echo "error"
  ;;
esac
