#!/usr/bin/env bash

#查找特定的用户名
grep1 -E "[0-9]" year
exit 0
grep `whoami` /etc/passwd #查找当前登陆用户
grep -v `whoami` /etc/passwd #查找所有非当前登陆用户

grep 'test' ~/www/shell/  # 在文件夹中查找包含test字符的文件
grep -i 'test' ~/www/shell/  # 在文件夹中查找包含test字符的文件,不区分大小写

ps -lf|grep `whoami`#从当前进程中过滤出登陆用户

grep -n "grep" *  #在文件中查找字符串,打印出行号和匹配项 文件名

grep -l "grep" *  #只打印出包含符合查找记录的文件名
