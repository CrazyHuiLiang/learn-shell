#!/usr/bin/env bash

echo 'hello，this is my computer‘s $PATH:'
if [ -e "./001_hello.sh" ]
then
  echo $PATH
fi
