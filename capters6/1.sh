#!/usr/bin/env bash

#统计计算机软硬件信息，并保存到shell脚本中

#使用变量替换定义若干个变量
TIME=`date`
NAME=`uname -n`
KERNEL=`uname -s`
VERSION=`uname -r`
ARCH=`uname -m`
OS=`uname -o`

echo
echo "Info about your computer"
echo "=============================="
echo "Current Time : $TIME"
echo "Host Name : $NAME"
echo "Operation System : $ARCH"
echo "Kernel Version : $KERNEL $VERSION"
echo
exit 0