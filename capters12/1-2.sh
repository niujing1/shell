#!/usr/bin/env bash

#处理信号
#让运行的脚本在用户终止时也能正常的清除临时文件

#接收信号时不清理临时文件的脚本
#使用当前脚本运行的进程PID创建一个唯一的文件
TMPFILE=tmpfile.$$


#创建临时文件
echo
echo "Creating temporaryfile $TMPFILE..."
echo `date`>$TMPFILE

echo
#模拟一些工作
echo "Script is running..."
echo -n " "

#打印进度条
TIME=15
until [ "$TIME" -eq 0 ]
do
        echo -n "###"
        #每打印一次#就sleep 1s
        sleep 1
        #让TIME的值减1,最终等于0的时候结束
        let TIME-=1
done

#只有脚本执行到这里时,才会清楚临时文件
echo
echo "Cleaning up temp file $TMPFILE"
rm -rf $TMPFILE 2>/dev/null
echo

exit 0