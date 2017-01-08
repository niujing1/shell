#!/usr/bin/env bash
#查看当前shell进程的相关信息

#进入/proc/文件系统,找到对应bash进程的目录,查看其中的文件呢

echo $$  #通过特殊变量$$查看当前进程的PID
17352

#进入文件系统下响应的目录
cd /proc/17352

#目录包含进程的所有信息,且进程的目录结构都是相同的
ls -l

##如何打开系统的路由功能
#可以通过修改 /proc/sys/net/ipv4/ip_forward
#打开IP转发功能
sudo echo 1>/proc/sys/net/ipv4/ip_forward

#关闭IP转发功能
echo 0>/proc/sys/net/ipv4/ip_forward
#proc/sys/子目录的作用是像系统管理员报告各种不同的内核参数,
#与/proc/文件系统中的大部分文件不同,改目录下的某些文件是可以写入的,只不过,只有root才可以
#常见的就是路由转发,如上所示
#注意,改变是临时的,系统重启会回到默认值
#要想在启动时改变,修改/etc/sysctl.conf,c参考sysctl。conf(5)

