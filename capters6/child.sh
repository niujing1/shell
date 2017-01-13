#!/usr/bin/env bash

#检查子进程中是否有父进程中变量LOCATION的拷贝
echo "----------------------"
echo "The child is at '${LOCATION:-somewhere not defined}'"

#如果子进程中拥有变量LOCATION的拷贝,就修改它,如果没有,就定义
LOCATION=CHINA #在子进程中修改变量的值不会影响父进程

#访问子进程中的变量location
echo
echo "The child is at '$LOCATION'"
echo "-------------------------"

exit 0