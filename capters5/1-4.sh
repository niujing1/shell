#!/usr/bin/env bash

#显示包含空格的文件
cat name.txt

#cat命令的-T选项把tab字符显示为 ^I
cat -T name.txt

#使用expand命令把tab替换为空格
expand name.txt|cat -T