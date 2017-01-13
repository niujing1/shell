#!/usr/bin/env bash

#获取用户输入的变量
echo
read -p "Please input your name : " NAME  #read从键盘读入,-p指定提示信息

echo -e "Welcome,$NAME!\n Your name is saved as 'NAME'!"

echo "------------------------"
echo
echo "Clear variable 'NAME' using 'unset' command"

#清除变量的值
unset NAME
echo
echo "Now variable 'NAME' is : "

#判断变量是否被清除
if [ -z $NAME ]
then
      echo
      echo "NAME : $NAME"
      echo "Variable NAME is null"
else
      echo
      echo "NAME: $NAME"
      echo "Variable NAME is not null"
fi

echo
echo "quit"
echo

exit 0