#!/usr/bin/env bash

# 选择要操作的行 nd 删除第n行
cat -n test.txt | sed '6d'|more
echo

#删除第m 到 n行,对sed来说,会把2,4扩展为2 3 4
# n,+m会扩展为n到n+m 2,+3  会变成2 3 4
cat -n test.txt | sed '2,4d'|more
echo

#删除不希望显示的行
cat -n test.txt|sed '2,4d'
echo
echo

#使用!取反
cat -n test.txt|sed '2,4!d'
echo

#使用~表示跳转 2表示起始地址 3表示每隔3行提取1行
#cat -n test.txt|sed -n '2~3p'
echo

#除了n,m行
cat -n test.txt|sed -n '1,2p;4,6p'

#删除文件中所有的注释行
#cat 1.sh | sed '/^#/d'

#删除空行和注释行
cat 2.sh | sed '/^#/d' -e '/^$/d'

#显示出所有匹配到的行
cat 2.sh | sed '/^#/p' -e '/^$/p'

#提取出所有以数字结尾的行
cat test.txt|sed -n '/[0-9]$/p'


echo
#cat -n test.txt |sed  -n '3,+3p'

echo
#匹配从nj/test@qq.com这一行到test@3.com这一行
cat test.txt | sed -n '/^nj\/test@qq.com/','/^test@3.com/p'
