#!/usr/bin/env bash

#打印所有的偶数行

awk '
BEGIN{
      #在主循环开始以前指定分隔符为冒号
      FS=":";
}

#通过表达式匹配所有的偶数行
NR%2 == 0{  #内建变量NR的值为1 每次读取一行,NR自动加1
        print NR,$0;
}
' /etc/passwd