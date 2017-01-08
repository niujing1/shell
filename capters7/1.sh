#!/usr/bin/env bash

## if else分支与特殊变量$#结合,实现检测入参的需求
#检测脚本执行时命令行的参数个数

if [ $# -lt 2 ]
then
      #参数个数小于2,脚本退出
      echo "Error! Paramter count wrong"
      echo "Usage:$0 operator file"
      exit 1
elif [ $# -gt 2 ]
then
      #参数个数大于2,脚本退出执行
       echo "Error ! Paramter too many!"
       echo "Usage:$0 oprater file"
       exit 1
fi

#执行到这里,说明正确传入两个参数
echo "My Script begins running"

exit 0