#!/usr/bin/env bash

##为程序编写安装脚本
# 得到当前的操作平台
PLATFORM=`uname -s`

#为各种操作系统定义相应的空变量
FREEBSD=
SUNOS=
MAC=
AIX=
MINIX=
LINUX=

echo
echo "Identifying the platform on which this installer is running on..."
echo

# 依平台进行测试
if [ "$PLATFORM" = "FreeBSD" ]
then
       echo "This is FreeBSD system"
       #如果测试为真,给相应的操作系统变量赋值为1
       FREEBSD=1
       ##如果前边的if条件不满足,继续进行elif中语句的测试
       #后边以此类推
elif [ "$PLATFORM" = "SunOS" ]
then
        echo "This is Solaris system"
        #如果测试为真,给相应的操作系统变量赋值为1
        SUNOS=1
elif [ "$PLATFORM" = "Darwin" ]
then
        echo "This is MAC  OSX system"
        MAC=1
elif [ "$PLATFORM" = "MINIX" ]
then
        echo "This is MINIX  system"
        MINIX=1
elif [ "$PLATFORM" = "Linux" ]
then
        echo "This is Linux  system"
        LINUX=1
else
        echo "Failed to identify this operator system,Abort"
        exit 1
fi

echo "Starting to install the software..."
echo

##后边的安装脚本可以检查各个操作系统的系统变量的值石佛欧为1
#以此来执行各种不同的操作

exit 0