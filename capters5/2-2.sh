#!/usr/bin/env bash

#得到一个字符的长度

echo
echo  "The script will tell you the length of your input"

#使用空冒号构建无限循环
while :
do
      read -p "Please Enter a string(or quit):"
      case "$REPLY" in
            [Qq]|[Qq][Uu][Ii][Tt])
                     echo "Bye"
                     #并在输入quit时退出
                     exit 0
                     ;;
             *)
                     #使用expr命令计算字符串的长度
                     LEN = $(expr length "$REPLY")
                     echo "Length:"$LEN $REPLY
                     ;;
      esac
done

exit 0