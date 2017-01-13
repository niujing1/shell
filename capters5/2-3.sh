#!/usr/bin/env bash

expr length STRING #获得字符串的长度

expr substr STRING POS LENGTH #获得string中的第一个子串

expr index STRING CAHRS #字符串在确定字符中第一次出现的位置

##从中目录中提取出用户名
echo $HOME

#打印用户主目录中第七个字符开始的7个长度的字符
expr substr $HOME


