#!/usr/bin/env bash
#file不仅可以显示出文件的几种大的分类,还可以分析普通文件中的数据格式,输出详细信息

 #显示内核文件信息
echo

echo "Kernel file:"
echo -n " "
file /boot/vmlinuz-`uname -r`

#二进制程序 /bin/ls
echo
echo "Binary program 'ls':"
echo -n " "
file /bin/ls

#主目录
echo
echo "Home dir :"
echo -n " "
file ~


#符号连接文件
echo
echo "sybolic link file:"
echo -n " "
file /usr/bin/locate


#压缩的数据
echo
echo "gzip compressed data:"
echo -n " "
file /usr/bin/locate


#shell脚本
echo
echo "shell  script"
echo -n " "
file ./3.sh

echo

exit 0
