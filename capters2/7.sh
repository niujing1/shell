#!/usr/bin/env bash

#重命名文件目录
touch oldname #创建一个新的文件

ls -l oldname #显示文件被创建成功

mv oldname newname #重命名文件为newname

ls -l oldname #重命名成功后原文件不存在

ls -l newname #重命名后显示新的文件名



#重命名文件夹
mkdir olddir #创建一个文件夹

ls -l -d -F olddir #检测目录是否存在

mv olddir newdir #将olddir重命名为newdir

ls -l -d -F olddir #查看以前的文件名,显示目录不存在

ls -l -d -F newdir #查看新的目录名

