#!/usr/bin/env bash
ls -l /etc/profile ~/.profile ~/.bash_history

#为操作设置别名
alias cp='cp -i'#再执行alias cp 输出 alias cp='cp -i'
#cp -i // mv -i是当用户确认才执行操作

#将内建变量打印到终端
echo $PS2 # >
echo $PS1 # \h:\W \u\$
echo $PATH #/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/rabbitmq/3.6.4/sbin:/Users/nj/

#执行 Myls 提示 command not found

#添加自定义变量到环境变量path
export PATH=~/bin:${PATH}
