#!/bin/bash

baseURL='/Users/Zhang/Documents/MyGit/shell/src/ctool'
action=$1
fileName=$2

# 创建文件
createFile () {
  if [ ! -e $fileName ]
    then
    touch $fileName
    return 0
  else
    echo "File exist,If you want init $fileName, Please use 'ctool init $fileName'"
    return 1
  fi
}

# 格式化文件
initFile () {
  cat "$baseURL/template.c" > $fileName
}

# 编辑文件/打开文件
editFile () {
  vim $fileName
}

# 编译文件
compileFile () {
  gcc -g $fileName
}

# 运行
runFile () {
  echo -e '-------------------------------\n'
  ./a.out
  echo -e '\n'
}

# 调试程序
gdbFile () {
  gdb "a.out"
}

createAction () {
  createFile
  if [ $? -eq 0 ]
    then
    initFile
    editFile
  fi
}

dispatchAction () {
  case $action in
    "create")
      createAction
    ;;
    "c")
      createAction
    ;;
    "init")
      initFile
      editFile
    ;;
    "debug")
      compileFile
      gdbFile
    ;;
    "d")
      compileFile
      gdbFile
    ;;
  esac
}


if [ $# -eq 2 ]
  then
  dispatchAction
elif [ $# -eq 1 ]
  then
  fileName=$1
  compileFile
  runFile
else
  cat "$baseURL/help"
fi
