#!/usr/bin/env bash

 #测试文件是否存在
 for file in [1-8].sh                        #for将读取test1-test8，后缀为.sh的文件
    do
        if [ -f $file ]                              #判断文件在当前目录是否存在。
        then
            echo "$file exists."
        fi
    done