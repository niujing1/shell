#!/usr/bin/env bash

#把命令的输出结果保存到文件中
#比如ls命令的输出
#ls > ~/www/shell/command.txt

#使用一系列的命令把输出同事重定向到一个文件中
#{date;df -h;uptime;} > ~/www/shell/command.txt #貌似这个命令并不支持

#使用shell重定向操作符>>来实现文件内容追加

#输出到标准输出
echo
echo "Redirct standard output of command 'ls -C' into command.txt"
echo
echo "So plaease check command.txt file after running this script"
echo


#纪录脚本运行时间
echo "(`date`)" >> ~/www/shell/command.txt


#追加标准输出到文件
echo "The file of $PWD is:" >> ~/www/shell/command.txt

#以列的格式记录目录中的文件列表
ls -C >> ~/www/shell/command.txt



#在输出文件中追加一个换行符
echo >> ~/www/shell/command.txt

###若command.txt 不存在则, >> 和 >操作运算符的结果是一样的,都是输出到文件,
###如果文件已存在的话,>> 不会覆盖  >会覆盖原有结果