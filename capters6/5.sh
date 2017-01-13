#!/bin/bash

##在脚本件传值,且不使用环境变量,以免增加文件耦合度
# 特殊变量,位置变量

#检查是否制定了参数
if [ -n "$1" ]
then
      echo
      #显示脚本名称以及如何调用
      echo -e "Script Name:\t\t$1"
      echo -e "How Script is in vokeed:\t\t$0 $1"

      #显示指定参数

      echo -e "The first parameter:\t\t$1"

       #只有文件存在,我们才能显示它的内容
       if [ -f "$1" ]
        then
               echo
               echo "The content of file '$1'"
               echo "------------------------"
               #显示命令行指定的参数文件的内容
               echo "`cat $1`"
               echo "-------------------------"
        else
               echo "File $1 is not exists"
               exit 1
        fi
else
        #如果没有指定参数,显示帮助信息
        echo
        echo "Show the content of a file "
        echo
        echo "Usage:"
        echo "`basename $0`[filename]"
fi

echo
exit 0
