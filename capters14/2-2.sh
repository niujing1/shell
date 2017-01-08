#!/usr/bin/env bash

#写一个脚本 统计文件中的总行数,空白行数以及注释行的函数

#方案1,定义3个变量,分别统计,至少需要一个参数

if [ "$#" -eq 0 ]
then
        echo "Usage:"
        echo -e "\t`basename $0` [FILE]..."
        exit 1
fi

#处理每一个命令行参数
for FILE in "$@"
do
        #只有当文件是一个可读文件,且是一个包含数据的可读文件时,才能被脚本处理
        if [ -f "$FILE" ] && [ -r "$FILE" ] && [ -s "$FILE" ]
        then
                echo "$FILE:"
                awk '
                #统计所有行数
                /.*/{total_lines +=1;}
                #{total_lines +=1;}

                #统计所有的空行
                /^*$/{empty_lines +=1; next;}

                #统计所有的注释行数
                /^*#$/{comment_lines +=1;}

                #在主循环结束以后输出结果
                END{
                        printf "\tTotal Lines:%s\t\t",total_lines;
                        printf "\tEmpty Lines:%s\t\t",empty_lines;
                        printf "\tcomment lines:%s\t\t",comment_lines;
                }
                ' "$FILE"  #这里和前边要有一个空格
        else
                echo "$FILE can not be handle"
        fi
done

echo "Done"
exit 0