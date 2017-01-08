#!/usr/bin/env bash

echo 
echo -n "This Program add line numbers for a text file"

#读取用户输入的文件路径
read file

echo 
echo "Precessing each line of file $file"
echo 

count=0

#从完整的路径中获得文件名
filename=`basename $file`

#每成功读取一行数据，while循环就会继续执行
while read file 
do 
  #行号加1
  count=$((count+1))
  #在每一行的数据前边加上行号
  echo $count:$line
  #把文件中的数据作为while语句中read命令的标准输入
  ＃同时把while循环的输出重定向到文件out.line
  done <$file>$filename.lined

  echo "Output file is $filename.lined"
  echo 

  exit 0











