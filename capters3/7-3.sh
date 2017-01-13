#!/usr/bin/env bash
#打开文件outputfile并把它关联到文件描述符fd,
#如果文件已存在,则覆盖向其中写入数据
ls >&4
ls 1>&4
exec 4>>/Users/nj/www/shell/command.txt


