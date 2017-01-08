#!/usr/bin/env bash

#计算距离新年还有多少天
echo "Today is $(date +%Y-%m-%d)"

#获得今天是这一年的第几天
DAY=$(date +%j)

#不能在DAY的前边加上$
echo "There is $(( (365-DAY)/7 )) weeks before New Year"

#在$DAY的两侧要有空格
echo "Have passed $(expr $DAY/7) weeks in this year"

#let命令的算术表达式不能包含任何空格,并且不会使用计算结果替换表达式
let weeks=(365-$DAY)/7  ##let表达式要求紧密连接在一起 不能用空格
echo "There is $weeks weeks before NewYear"