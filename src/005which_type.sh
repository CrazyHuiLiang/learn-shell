#!/bin/bash
#判断用户输入的是什么文件

read -p "Please input a filename:" file
#接收键盘输入，并赋予变量file

if [ -z "$file" ]; then
  #判断file变量是否为空
  echo "Error, please input a filename"
  exit 1
elif [ ! -e "$file" ]; then
  #判断file的值是否存在
  echo "Your input is not a file"
  exit 2
elif [ -f "$file" ]; then
  #判断file的值是否为普通文件
  echo "$file is a regulare file!"
elif [ -d "$file" ]; then
  echo "$file is a directory!"
else
  echo "$file is an other file!"
fi






