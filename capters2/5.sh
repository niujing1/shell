#!/usr/bin/env bash
#创建文件夹和目录
ls -l test #检测文件是否存在

#创建空的文件.
touch test

#检测创建成功
ls -l test

#显示当前工作目录
pwd

#使用相对路径在主目录下创建一个目录
mkdir ../test

#使用相对路径检查文件夹是否创建成功
ls -l -F -d ../test

#使用绝对路径检查新创建的目录
ls -l -F -d /usrs/niujing/test

#使用绝对路径创建一个文件夹
mkdir /usrs/niujing/test

#使用绝对路径检车新创建的目录
ls -l -F -d /usrs/niujing/test


#mkdir -p可以一次创建多级目录
#-v可以显示所创建的目录
mkdir -p -v /a/b/c

#查看新创建的目录
ls -l -F -d   /usrs/niujing/test

#特殊符号~代表用户主目录
