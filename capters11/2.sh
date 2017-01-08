#!/usr/bin/env bash

#使用命令替换,把find查找的结果作为rm的参数传入
#rm -rf `find . -name \*.o -print`

#但是,一旦查找到的文件太多,超过了命令参数个数的限制,操作就会失败,可以使用xargs解决

echo
echo "enter a directory which you want find"
echo -n " Type 'quit' to exit "
echo

#询问用户输入查找目录
read SOURCE_DIR

while [ "$SOURCE_DIR" != "quit" ]
do
        if [ -d "$SOURCE_DIR" ]
        then
                echo
                echo "Finding all *.o files in '$SOURCE_DIR'..."
                echo
                echo "Directory '$SOURCE_DIR' contains the following '*'.o files"
                echo

                #打印出所有*。o文件
                find "$SOURCE_DIR" -name \*.o -print

                #可以使用单引号或者双银行引用*以及;,防止shell处理,记录在file.list
#                find "$SOURCE_DIR" -name \*.o -print -exec rm '{}' ';'>delfile.list
                find "$SOURCE_DIR" -name \*.o -print|tee delfile.list|xargs rm -rf
                #command|xargs command2 把command1的标准输出作为xargs的标准输入,而当作命令行参数执行command2

                echo
                echo "All *.o files have been removed"
                echo

                echo "Clean up another directory shich contains .o files"
                echo -n "Enter another dir or quit"

                read SOURCE_DIR

        else
                echo
                echo "'$SOURCE_DIR' is not a dir,input dir again"
                echo -n "Or quit"
                read SOURCE_DIR
        fi
done

echo
echo "Bye"
echo

exit 0