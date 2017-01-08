#!/usr/bin/env bash
#使用wc可以统计文本的行数 字数和字符数,但不能统计每个单词出现的个数
#自己构建脚本实现统计一个单词出现的单词个数

#cat name.txt|wc ##得到 2  3  8分别是字数  行数 和字节数
#wc -l `find -name *.c` #统计一个目录下所有文件的行数
count(){
#函数需要一个参数才能正确调用
if [ $# != 1 ] ##注意if和 比较运算符 != 的两边都要留空格
  then
     echo "Need one file paarameter to work!"
     exit 1;
  fi

#删除标点符号和特殊字符
#构建一个很长的管道命令,每一行都单独写在一行中,增加可读性
tr '+-=*.,;:{}()<>"\n\t' ' '<$1 |\


#把所有的大写字母转为小写
tr 'A-Z' 'a-z'|\
#把重复连续的空格符转换为一个空格符
tr -s ' '|\

#把所以空格符转换为换行符
tr ' ' '\n'|\

#把所有相同的单词放到一起
sort|\

#删除重复单词,并进行统计
uniq -c|\

#根据重复的次数进行排序
sort -rn
}

echo
echo "this script can count words of a specified file"

#使用空命令 冒号 实现无限循环(:不做任何事,并且永远返回真)
while :
do
   read -p "Enter the file path(or quit):"
   case "$REPLY" in
      [Qq]|[Qq][Uu][Ii][Tt])
         echo "Bye"
         #在输出大小写quit时,退出
         exit 0
         ;;
      *)
         #判断输入的是一个可读的普通文件,并且内容不为空
         if [ -f"$REPLY" ] && [ -r "$REPLY" ] && [ -s "$REPLY" ]
         then
           #当用户输入一个合法文件时
           #调用count统计文件的单词个数
           count "$REPLY"
         else
           #如果输入了非法的文件,显示不能处理它
           echo "$REPLY can notbe dealed with"
         fi
         ;;
      esac
   done
exit 0