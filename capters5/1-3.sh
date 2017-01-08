#!/usr/bin/env bash

#定义函数count,用来统计字数

count(){
    #函数需要一个参数,才能正确调用
    if [ $# != 1 ]
    then
        echo "Need one parame"
        exit 1;
    fi

    #删除标点符号和特殊字符
    #构建一个很长的管道命令,每一段都单独写在一行中,增加可读性
    # [:punct:]所有代表标点的字符集  [:space:]把tab替换为空格  [:cntrl:]特殊的控制字符
    tr '[:punct:]' ' '<$1 | tr '[:space:]' ' '|tr '[:cntrl:]' ' ' |\
    #删除所有的数字
    tr '[:digit:]' ' '|\
    #把所有的答谢字母转换为小写
    tr '[:upper:]' '[:lower:]'|\
    #把连续重复的空格替换为一个空格
    tr -s ' '|\   ###tr str1  str2 的中间要有空格  ''空格要隔开一个空白符
    #把所有的空格替换为换行
    tr ' ' '\n'|\
    #把相同的单词放到一起
    sort|\
    #删除重复的单词,并统计
    uniq -c|\
    #根据重复的次数排序
    sort -rn
}

echo
echo "this script can count words of a special file"

#使用空冒号构建无限循环
while :
do
      read -p "Enter the file path(or quit):"
      case "$REPLY" in
             [Qq]|[Qq][Uu][Ii][Tt])
                   echo "Bye"
                   #在输入大小写quit时,退出
                   exit 0;
                   ;;
             *)
                   #判断输入是否一个可读的普通文件,且内容非空
                   if [ -f "$REPLY" ] && [ -r "$REPLY" ] && [ -s "$REPLY" ]
                   then
                       #当用户输入一个合法文件时
#                       调用count统计文件字数
                        count "$REPLY"
                   else
                       #输入非法文件
                       echo "$REPLY cannot be deal"
                   fi
                   ;;
             esac
      done
      exit 0