#!/usr/bin/env bash
#将多个命令的输出保存为同一个文件,而不用多次输入
#打开一个新的文件描述符,它被关联到exec.out
echo
echo "open file descriptor 4,which is associated with file exec.out"
exec 4>exec.out
echo

#打开另一个文件描述符5.,它被关联到文件描述符4
echo "open file descriptor 5,which is associated with file descriptor 4">&3
exec 5>&4
echo "sending server data .."

#重定向标准输出文件描述符5
echo "data stream from descriptor 1 STDOUT,"1>&5
echo "redirect to file descriptor 5," 1>&5
echo "then data will go to file descriptor 4,which is associated with file exec.out" >&5
echo

#任务完成后关闭文件描述符
echo "closing fd 4"
echo 4>&-
echo "closing fd 5..."
echo 5>&-
echo

exit 0