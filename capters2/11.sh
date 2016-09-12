#!/usr/bin/env bash

#显示一个文件的详细信息
ls -d -l ~/www/shell/readme.txt

#显示文件的权限信息
ls -l  ~/www/shell/readme.txt

#显示文件夹的权限
ls -l -l -d ~/www/shell

chmod -x test/ #删除文件目录的可执行权限

ls -l test/test.php #会报错,在没有权限的情况下不能查看


ls -ld test/ #查看目录权限.

chmod +x test/ #添加目录的可执行权限.
echo "echo hello">test/test.sh  #在目录中创建可执行文件
chmod +x test.sh

chmod -rw test/ #删除文件目录的读写权限
ls -l test/ #会报错,没有权限读取.

ls -l test/echo.sh #但是可以执行
