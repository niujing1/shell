#!/usr/bin/env bash

#使用find查找所有文件 .o 文件

echo
echo "enter a directory which you want find"
echo -n " Type 'quit' to exit "
echo

#读取用户输入的目录,在改目录下查找
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
                find "$SOURCE_DIR" -name \*.o

                #可以使用单引号或者双银行引用*以及;,防止shell处理,记录在file.list
                find "$SOURCE_DIR" -name \*.o -print -exec rm '{}' ';'>delfile.list

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