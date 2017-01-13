#!/usr/bin/env bash

#查询文件系统中任意用户的主目录UID,GID所有shell等信息

echo
echo "This script will find user's home directory"
read -p "Enter username:"


until [ "$REPLY" = "quit" ] || [ "$REPLY" = "Quit" ] || [ "$REPLY" = "q" ]
do
        echo
        awk '
                BEGIN{
                      #修改分隔符为:
                      FS=":";
                }

                #当地一个字段本awk变量USERNAME相同时,打印目录
                $1 == USERNAME{
                #打印目录
                printf "USER:%-8s UID:%-5s GID:%-5s HOME Dir:%-15s Shell:%-8s\n",$1,$3,$4,$6,$7;
                }

                #定义awk变量USERNAME
        'USERNAME="$REPLY" /etc/passwd  #username的等号两边不能有空格
done

echo "Bye"
exit 0