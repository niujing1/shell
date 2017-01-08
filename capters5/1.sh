#!/usr/bin/env bash

#从一个目录中取出最近访问过的5个普通文件,并且要求输出最后的文件名和最后的访问时间

#用ls 的-u -t选项根据文件的风文件夹对文件列表排序,再让输出的结果经过head过滤,就可以得到列表前5行
#最后可以使用cut命令剪切无关数据,只保留访问时间和文件名
ls -lut|grep "^-"|head -5|cut -c41-
#grep "^-"是正则匹配,-匹配普通文件
#-t按时间排序
#head -5 取前5条结果
#cut 删除无关信息 n 第n个字符 n- n到行尾 n-m n到m -m1到n个字符

paste -d':' name.txt tel.txt |cat -n #将name.txt和tel.txt中的内容拼接

#paste与cut的作用刚好相反,是把文件连接到一起
paste -d'<' name.txt tel.txt |paste -d'>' - name.txt|cat -n
#注意第二个paste命令,有一个参数是- 用来表示从标准输入中读取数据,二此时的标准输入是从管道上传递过来的上一个paste命令的连接结果
#与nametxt的内容再次连接

##查看当前系统中的各种shell程序,统计有多少个用户在使用,并把统计结果按照从多到少的顺序打印出来
#使用cut从文件的每一行数据中剪切出一部分,使用sort
#合并,使用uniq统计shell的使用次数,再sort排序
cat /etc/passwd|cut  -d:-f7|sort|uniq -c|sort -nr
# shell默认使用tab作为分隔符,为了让它使用: 可以使用-d选项
#-f表示fields shell字段表示的是每行的第几个字段
#sort认为11排在100的后边,因为1大于0  为了按数字排序,可以使用-n -r
#-r(--reverse)

##tr str1  str2 将str1替换为str2
cat file| tr "abc" "xyz">new file #将文件中出现的abc替换为xyz


#使用tr命令统一大小写
cat file|tr [a-z] [A-Z]>new file

#将文件中的数字替换为a-j
cat file|tr [0-9] [a-j]>new file

#删除文件中出现的"test"字符
cat file|tr -d "test">new file

#删除文件中"连续着"的重复字母,只保留第一个
cat file |tr -s [a-zA-Z]>new file

#删除文件file中出现的换行\n  制表\t
cat file|tr -d "\n\t">new file

#删除空行
cat file|tr -s "\r">new file

#把路径变量中的":"替换为"\n"

echo $PATH|tr -s ":" "\n"




