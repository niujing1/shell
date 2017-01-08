#!/usr/bin/env bash

##使用$# 或者 $*来获取整个参数列表
#使用if [ -z $1 ]也可以达到相同的效果
if [ $# -eq 0 ]
then
       echo
       echo "Usage: `basename $0` [filename]"
       echo "At Least specify one filename to remove execute permisson for group and others"
       echo
       exit 1
fi

echo
echo "Your specified the following parameters:"
echo "<< $* >>"
echo

#遍历所有的参数
#for PAPAMETER in "$@"
#do
#       echo "Processing file '$PAPAMETER'"
#       #删除权限
#       chmod go-x $PAPAMETER
#done

##循环的过程也可以使用while

exit 0
while [ "$*"!="" ]
do
      echo "Processing file '$PAPAMETER'"
      chmod go-x $PAPAMETER
      shift
done

echo "Done"
echo

exit 0