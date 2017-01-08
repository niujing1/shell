#!/usr/bin/env bash
#当前使用的变量保存在shell变量中
echo $SHELL

#/etc/passwd可以得到当前使用过的变量
grep "$USER" /etc/passwd|awk -F:'{print $1}'

#查看用户在etc/passwd下的纪录
cat /etc/passwd|grep usr

#查看bash程序
ls -l /bin/bash