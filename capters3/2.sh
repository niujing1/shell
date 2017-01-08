#!/usr/bin/env bash
#把/etc/passwd中的内容按行读取
#cat -n /etc/passwd

linenumber=1 #行号从数字1开始读取

read oneline #从文件/etc/passwd中读取一行

while ["$oneline"!=""]
do
  echo -e "linenumber:$oneline\n" #打印行号以及这行数据,然后打印一个换行符
   #行号加1
  linenmuber=`expr $linenumber+1`
  #从文件读取下一行
  read oneline
done

exit 0
