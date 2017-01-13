#!/usr/bin/env bash

#如果用户每次输入的参数个数是不确定的,怎么操作变量 ?

#用$#来获得变量个数
#使用if [ -z $1 ] 也可以达到相同的效果
#read -p "test : "
#echo $*
#shift
#echo $*
#exit 0
if [ $# -eq 0 ]
then
        echo
        echo "Usage:`basename $0` [filename] "
        echo "At least specify one filename to remove execute permission for group and others"
        echo
        exit 0
fi

echo 

#检查是否有其它的参数
#使用until [ -z $1 ]可以达到相同的效果
 while [ $# -gt 0 ]
 do
       echo "Processiong file '$1'."
       chmod go+x $1

       #删除第一个参数
       shift  ##shift默认从参数列表删除第一个参数
              # 如果指定参数n shift可以一次删除多个参数
              # shift n 删除前n个  shift $#删除全部
              # shift$(($#-3))删除除最后3个参数之外的参数
 done

 echo "done"
 echo
 exit 0