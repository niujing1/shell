#!/usr/bin/env bash

##case分支结构
#清屏
clear

#显示菜单项,从而是用户可以选择所期望的操作
echo "           File Operation List"
echo "           -------------------"

echo " Choose one of the following operations:"
echo

echo "[o]pen File"
echo "[D]elete File"
echo "[R]ename File"
echo "[M]ove File"
echo "[C]opy File"
echo "[P]aste File"
echo

#等待用户输入
echo -n "Please enter your operation:"
read operation

#根据用户的输入操作执行相应的操作
case "$operation" in
#同时接受大小写字母
"O"|"o")   ## ;; / ;& /;;&三种结束子句的方式
        #用户选择了打开文件的操作
        echo
        echo "Opening File..."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"D"|"d")
        #用户选择了打开文件的操作
        echo
        echo "Deleting File..."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"R"|"r")
        #用户选择了打开文件的操作
        echo
        echo "Rename File..."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"O"|"o")
        #用户选择了打开文件的操作
        echo
        echo "Opening File..."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"M"|"m")
        #用户选择了打开文件的操作
        echo
        echo "Moving File1 to File2"
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"C"|"c")
        #用户选择了打开文件的操作
        echo
        echo "Copying File1 to File2."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
"P"|"p")
        #用户选择了打开文件的操作
        echo
        echo "Paste File..."
        echo "Successed!"
        ;;  #note double semicolon to terminate each option
*)
        #用户的输入不匹配任何操作,以错误状态1退出脚本
        echo
        echo "Error ,Unknown operator"
        echo "Progarm exit"
        ;;
esac

echo

exit 0