#!/usr/bin/env bash

#解决跨平台时的换行符不同的问题(unix系统也可以安装)
#在ubuntu linux中,可以安装tofrodos包,使用其中的formdos命令和todos命令来转换文本文件

#在命令行中执行
file name.txt   #得到name.txt: ASCII text

#把文件转换成windows格式的文本文件以crlf作为行结束符
todos name.txt

#查看文件格式,windows格式的文本以CRLF作为行结束符
file name.txt #得到 ASCII Eglish Teat,with CRLF line terminators

#使用fromdoc把文件从win格式转为unix格式
fromdos name.txt

#检测文件格式,可以看到1已被转换为unix格式
file name.txt



