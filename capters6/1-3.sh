#!/usr/bin/env bash

#定义只读变量,防止外部误操作
VERSION 2.0
#声明version是一个只读变量
readonly VERSION
echo
echo -e "Defined readonly variable :\n VERSION=$VERSION"
echo

#尝试修改一个只读变量会失败
echo "Try to modify readonly variable VERSION"
VERSION=3.0
echo
echo -e "Readonly variable VERSION doesn't change \n VERSION=$VERSION "

unset VERSION
echo  "can't unset a readonly variable"

