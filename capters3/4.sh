#!/usr/bin/env bash
#管道
#把一个程序的输出作为另一个程序的输入

#行号从数字1开始
linenumber=1

#文件/etc/passwd的内容通过管道传递到read命令中
cat $1 | while read oneline

do
   #打印行号及数据,然后打印一个自负
   echo -e "$linenumber:$oneline \n"
   #行
   # 号加1
  linenumber = `expr $linenumber+1`
done
exit

#bash中管道的格式是 command1 | command2 |command3

#sort命令会按照字母顺序对结果重排
