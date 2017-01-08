#!/usr/bin/env bash
#标准错误输出
echo
echo "create two files in current dir"
echo " 'test.out' for standard output "
echo " 'test.err' for error output "
echo
echo "please check their contents "

# 同时列出存在和不存在的文件,并把结果重定向到不同的文件
#如果没有指定的文件描述符,默认使用1,表示标准输出
ls /bin/bash /bin/ls /bin/dd /bin/this_file_not_exist > test.out 2>test.err
echo

#exit 0  #退出shell程序

#重定向到标准输出和标准错误输出到不同文件的语法格式为
#command >standard.out 2>standard.err


#---需求2------把标准输出和标准错误输出重定向到同一个文件------
ls  /bin/bash /bin/ls /bin/dd /bin/this_file_not_exist &>same.out

#重定向到标准输出
ls  /bin/bash /bin/ls /bin/dd /bin/this_file_not_exist >same.out 2>&1

#重定向到标准错误输出
ls  /bin/bash /bin/ls /bin/dd /bin/this_file_not_exist 2>same.out 1>&2


#把错误输出重定向到标准输出的语法格式是 command &> outputfile
# 或者 command >& outputfile
# 或者 command > outputfile 2>&1


#---需求3-----把命令的标准错误输出重定向到指定文件------

#在整个系统中查找一个文件
find / -name "somefile" 2>~/www/shell/capters3/null.txt