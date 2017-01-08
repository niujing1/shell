#!/usr/bin/env bash

#在shell脚本中输出当前的日期,计算并输出今年和明年的年份
##显示当前日期
DAY=$(date +%A)
echo "DATE:`date +%Y-%m-%d`" ##2016-09-23
echo -n "Today is $DAY"


##显示今年和明年
echo "Next Year will be `expr \`date +%Y\`+1`"
echo
echo "Previous year was $(expr $(date +%Y)-1)"

#显示登录用户
echo -n "Current login users:"
echo $(who | cut -c1-8|sort -u) #sort -u去掉重复的用户名
echo
exit 0