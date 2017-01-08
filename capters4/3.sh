#!/usr/bin/env bash
#终止程序的执行
#可以使用shell的内建命令来结束正在执行的进程
#使用nohup在后台运行make进程
nohup make &
#返回 [1]1641

#使用bash显示出job Id,进程的PID和命令提示符
#并且显示nohup会把make的输出重定向到文件nohup.out中
nohup:ignoring input and appending output to 'nohup.out'

#使用jobs命令查看后台进程
jobs -l
[1]+ 1641 running  nohup make &

#使用pid查看make进程
ps -ef 1641
##显示如下
# UID   PID  PPID   C STIME   TTY           TIME CMD
# 501 89931 89929   0  4:42上午 ttys006    0:00.17 -bash

