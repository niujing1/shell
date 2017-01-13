#!/usr/bin/env bash

#处理命令行的每一个文件,可以使用通配符
#echo "$@"
#exit 0
for file in "$@"
do
        echo "**processing file **"

        #使用-e选项指定多个编辑命令,把邮箱替换的同时,把2替换成3
        sed -e 's/test@qq.com/nj@qq.com/gp;' -e 's/2/3/g' "$file">"$file.$$"
        #sed -e 's/test@qq.com/nj@qq.com/gip;' -e 's/2/3/g' "$file">"$file.$$"
        #-i选项指定忽略大小写

        if [ -f $file.$$ ]
        then
               #覆盖原始文件
               mv -f "$file.$$" "$file"
        fi
done

echo "All done."
exit 0