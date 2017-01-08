#!/usr/bin/env bash

ps -ef  #system V unix查看进程
#unix分为system V unix和BSD unix
ps aux  #BSD unix查看进程   GNU unix可以支持两种形式
#option 说明:
#-e | -A 列出全部进程
#-f 用完整的格式显示每一个进程的信息
#使用-f时,进程列表的标题包括uid(进程所有者),pid(进程唯一标识)
#ppid进程父id
#标题C粗略的纪录了每一个进程所占CPU的时间,stime中纪录了启动改进程的时间
#若关联当前进程都某一个终端,它会被记录在TTY中,time中是这个进程消耗CPU的四件
