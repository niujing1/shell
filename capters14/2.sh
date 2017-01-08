#!/usr/bin/env bash

#统计当前目录下2016-9-26hao修改的所有文件大小,并且计算这些文件大小的总和
ls -l | awk '  #awk和{之间要有空格
#过滤其它特殊文件和目录,只对普通文件的行数据进行操作
($1 ~/^-/)&&($5>="500"){  # ~要和后边的pattern连在一起
        printf "Filename:%-15s AAA:%-12s Size:%s\n",$8,$6,$5;
        sum +=$5;
}

#在主循环结束以后,输出结果
END{  #END和括号要连在一起
        print "-----------";
        print "The sum:",sum;
}'

exit 0