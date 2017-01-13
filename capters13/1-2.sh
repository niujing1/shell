#!/usr/bin/env bash

#处理命令行的每一个文件,可以使用通配符
#echo "$@"
#exit 0
for file in "$@"
do
        echo "**processing file **"

        #使用;连接多个编辑命令,把邮箱替换的同时,把2替换成3
        sed 's/test@qq.com/nj@qq.com/g;s/2/3/g' "$file">"$file.$$"

        if [ -f $file.$$ ]
        then
               #覆盖原始文件
               mv -f "$file.$$" "$file"
        fi
done

echo "All done."
exit 0