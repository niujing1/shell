#!/usr/bin/env bash

#移动文件和目录

#同时创建两个目录
mkdir src  dest

ls -l -d -F src dest #检查创建的新目录.

touch src/.stuff #子src下创建空的文件

ls -l src/ #查看新创建的文件

ls -l dest #显示目录为空


mv src/.stuff dest/ #将stuff移动到dest中

ls -l src #查看src显示为空

ls -l dest #文件stuff已经移动到dest中

pwd #显示当前工作路径

ls -i #显示每个文件的i节点




