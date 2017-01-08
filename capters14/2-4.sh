#!/usr/bin/env bash

#把记录之间的空行分隔改为空格
#echo $1
#read -p "File:" FILE
awk '
BEGIN {
        #设置分隔符为换行
        FS="\n";

        #设置输入记录分隔符为空字符串
        RS="";

        #设置字段输出分隔符为换行
        OFS="\n";

        #设置记录输出分隔符为换行
        ORS="\n\n";

        #打印标题
        print "The develops of Linux kernel:"
        print "(N)name , (E)email"
        print "-------------"
}

#使用正则表达式^N过滤所有无关结果
#只对以字母N起始的记录块处理
/^N/ {
print $1,$2;
}
' $1

exit 0
