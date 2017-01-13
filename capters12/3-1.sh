#!/usr/bin/env bash

#忽略信号,屏蔽信号输入,不希望操作被用户阻断
#使用空字符串或冒号屏蔽信号2  signint
#在非关键操作时恢复允许用户中断
# trap ''  2
#trap : 2
trap '' INT  ##当前操作不会被用户中断

echo
echo "Doing somthing"

#睡眠10s模拟操作
echo -n " "
COUNT=5
while [ $COUNT -gt 0 ]
do
        #打印进度条
        echo -n "##"
        sleep 1
        let COUNT-=1
done

echo  "Import thing done..."

#重新接收用户中断,恢复SIGNINT的默认中断回调
trap 2   ##不知道这里为什么使用中断名称INT不可以
echo "Press CTRL+C"

echo -n " "
COUNT=5
while [ $COUNT -gt 0 ]
do
        #打印进度条
        echo -n "##"
        sleep 1
        let COUNT-=1
done

echo "Done"
exit 0