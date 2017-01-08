#!/usr/bin/env bash

#忽略信号,屏蔽信号输入,不希望操作被用户阻断
#使用空字符串或冒号屏蔽信号2  signint
# trap ''  2
#trap : 2
trap '' INT  ##当前操作不会被用户中断

echo
echo "Doing somthing"

#睡眠10s模拟操作
echo -n " "
COUNT=10
while [ $COUNT -gt 0 ]
do
        #打印进度条
        echo -n "##"
        sleep 1
        let COUNT-=1
done

echo "Done"
exit 0