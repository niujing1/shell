#!/usr/bin/env bash
#指定关联的终端 -t(ps提供了大量的过滤条件)
ps -ft  /dev/pts/1

#-p指定关心的pid列表
ps -fp PID

#查找指定用户的所有进程
ps -fu nj #实际用户
#实际用户是标识那个用户创建了这个进程,不会指定进程的文件访问权限
#有效用户与实际用户的用户名相同,只有对那些设置了set-uid的程序来说有效用户名才会改变

#查看当前系统运行的所有apache程序
ps  -fC  apache2 #unix要求所以的网络服务进程都不能关联到任何一个终端

pstree #显示进程树