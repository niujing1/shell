#!/usr/bin/env bash

#在第一个终端执行xclock

#在另一个终端查找xclock的PID
ps -fC xclock

#发送一个信号到xclock的进程
kill -s HUP 5783 #(PID的值)

#在运行xclock的第一个终端查看
xclock