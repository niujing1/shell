#!/usr/bin/env bash

#shell变量

#如何知道当前用户的主目录,当前所使用的shell的可执行文件,当前的登陆用户名,uid,当前bash的版本好,当前工作目录
#前一个工作目录,当前脚本的运行时间,当前shell是第几层子进程,到那些目录中搜索可执行程序?

#主目录
echo -e "HOME Directory:\t\t$HOME"

#当前shell
echo -e "Current Shell:\t\t$SHELL"

#登录名
echo -e "User Name:\t\t$USER"

#登陆用户ID
echo -e "User Id:\t\t$UID"

#当前bash版本
echo  -e "Bash Version:\t\t\t$BASH_VERSION"

#当前工作目录
echo -e "Current Directory:\t\t$PWD"

#修改当前工作目录到主目录
echo
echo "--------Change Current Directory to '$HOME'------"
cd
echo -e  "Current Directory:\t\t$PWD"

#之前的的工作目录
echo -e "Previous Working Directory:\t\t$OLDPWD"
echo

#睡眠10秒
echo "**** will sleep 10 s ******"
#sleep 10

#从脚本执行到现在一共多长时间
echo -e "Seconds since invoked:\t\t$SECONDS s"

#打印bash级别
echo -e "Bash Level:\t\t$SHLVL"

#打印是个随机数
echo -en "10 Random Numbers:\t\t"

i=10
until [ $i -lt 1 ]
do
      echo -n "$RANDOM"
      let i=$i-1
done

echo
echo

#修改内部字段分隔符IFS为横杠
echo "-------- Change \$IFS to '_' ---------"
IFS=-  ##按照分隔符进行分割
echo "'2012-11-11' will be retreated as 3 strings:"
DATE=2012-11-11
printf "%s\n" $DATE

echo
echo -e "Command Serch In:\t\t$PATH"

exit 0
