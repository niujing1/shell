#!/usr/bin/env bash

#接收信号时清理临时文件的脚本
#使用当前脚本的运行进程PID创建一个唯一的文件
TEMPFILE=tmpfile.$$

#定义接收到信号时的回调函数
cleanUp(){
        if [ -f "$TEMPFILE" ]
        then
               echo
               echo "Clean up..."

               #清除脚本产生的临时文件
               rm -rf $TEMPFILE 2>/dev/null
               echo "Done"
               echo
        fi

        #结束脚本的执行
        exit 2
}

#注册信号回调函数cleanUp
trap cleanUp 1 2 3 15

#创建临时文件
echo
echo "Creating temporaryfile $TMPFILE..."
echo 'date'> $TMPFILE

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

#只有脚本执行到这里时,会清楚临时文件
echo
echo "Cleaning up temp file $TMPFILE"
rm -rf $TMPFILE 2>/dev/null
echo

exit 0