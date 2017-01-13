#!/usr/bin/env bash

#处理命令行的每一个文件,可以使用通配符
#echo "$@"
#exit 0
for file in "$@"
do
        echo "**processing file **"

        #使用-f选项指定包含多个编辑命令的文件
        sed -f a.txt "$file">"$file.$$"

        if [ -f $file.$$ ]
        then
               #覆盖原始文件
               mv -f "$file.$$" "$file"
        fi
done

echo "All done."
exit 0