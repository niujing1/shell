#!/usr/bin/env bash

#环境变量会被传递到子进程,本地变量不会
##在shell中创建环境变量,使子进程访问

#检查是否指定了命令行选项 --export

if [ "$1" = "--export" ]
then
      #在父进程中定义全局变量
       export LOCATION=USA
elif [ "$1" = "--no-export" ]
then
     #在父进程中定义一个本地变量
     LOCATION=USA
else
    #显示脚本的使用方法
    echo -e "`basename $0` --export\textport parent process's variable to child process"
    echo -e "`basename $0` --no-export\dont export parent prcess's variable to child process"
    echo
    exit 0
fi

echo
echo "Your parent is at '$LOCATION'"

#创建子进程,子进程是否能够得到LOCATION的变量拷贝依赖于export关键字
sh ./child.sh

#子进程退出,父进程继续执行
echo
echo -e "Your parent is at '$LOCATION'"
echo -e "Child process and parent process have different LOCATION"
echo

exit 0