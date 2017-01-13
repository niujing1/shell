#!/usr/bin/env bash

#sed命令
#使用sed的替换命令S可以把所以的html文件中str1替换为str2

#处理命令行的每一个文件,可以使用通配符
#echo "$@"
#exit 0
for file in "$@"
do
        echo "**processing file **"

        #保存结果到临时文件中
        sed 's/test/nj/g' "$file">"$file.$$"

        if [ -f $file.$$ ]
        then
               #覆盖原始文件
               mv -f "$file.$$" "$file"
        fi
done

echo "All done."
exit 0


