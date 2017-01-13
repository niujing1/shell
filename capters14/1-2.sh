#!/usr/bin/env bash

#通过f选项指定运行的awk程序
#awk -F:  -f user.txt test.txt


#查找UID大于240的用户
#awk中使用要操作的行 express {action;} < > <= !=  val ~/pattern/
#awk -F: '$3>240 {printf "User:%-15sUID:%s\n",$1,$3}' /etc/passwd

#查找所有使用bash和C shell的用户
awk -F: '($7=="/bin/bash")||($7=="/bin/csh"){printf "User:%-15sUID:%-20sShell:%s\n",$1,$3,$7;}' /etc/passwd


#使用||把两个规则合并
awk -F: '($3>250)||($7=="/bin/csh"){printf "User:%-15sUID:%-20sShell:%s\n",$1,$3,$7;}' /etc/passwd

#使用next实现,如果第一条规则成功匹配,就执行next跳过第二条规则
#如果删除next,会有一部分用户被重复打印
awk -F: '($7=="/bin/bash"){print $1;next;}
         ($3>=250){printf $1,$3,$7;}
'/etc/passwd


