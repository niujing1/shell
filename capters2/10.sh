#!/usr/bin/env bash

#复制文件和目录
ls -l src dest #显示文件夹内容

cp -v src/test dest #将src文件夹下的test 复制到dest中

ls -l -i src/ dest/ # 显示文件复制成功



mkdir -v a b #同时创建a b 两个文件夹

ls -l a b #查看两个文件夹的内容

cp a/ b/  #cp默认不能复制目录

cp -r a/ b/ #使用-r选项成功复制aa下的文件到b目录

rm -r a/b/ # 删除目录和里边的文件

cp -r -v -P a/ b/ #使用-p选项复制child到parent目录
