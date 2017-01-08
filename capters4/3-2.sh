#!/usr/bin/env bash

#如果一台机器上运行着很多同一个服务的进程,可以使用killall
#使用root权限启动apache服务器
sudo /etc/init.d/apache2 restart

#查看apache的进程
ps -fC apache2

#普通用户不允许杀死所有的apache进程
killall apache2 #operation not  permitted

#使用root用户可以
sudo killall apache2

#检查killall命令的退出状态
echo  $?

#再次检查apache进程的存在,显示没有
ps -fC apache2

##使用kill或者killall 都可以结束进程,更简单的做法是ctrl+c





