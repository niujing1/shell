#!/usr/bin/env bash

#在shell脚本中的一行执行多个命令，要在每个命令的后边添加分号
＃若在此时的最后一行天假输出重定向，希望所有输出都被重定向，实际上只有最后
＃一个命令的结果会被重定向，如何解决 ？
＃1 用｛｝将所有命令扩起来，形成块语句

echo 
echo "Block input is redirected to file 'b.out'"
#把多个命令的输出一起重定向到文件中
{ date;cd /etc;echo -n "Current working dir:";pwd } > ~/www/shell/cpters3/b.out


# 打印当前工作目录
echo "Curretn Working dir :$PWD"
echo 
exit 0
