#!/usr/bin/env bash

#压缩文件
#在当前目录下创建一个数据文件
#dd bs=1024 count=1024 if=/dev/zero of=data.file 2>/dev/null
dd bs=1024 count=1024 if=~/www/shell/testzip of=data.file 2>/dev/null

if [ $? -eq 0 ]
then
        #list the size of the file
        echo
        echo "this is our data file:"
        echo " `ls -l data.file`"
fi

echo
echo "now dompressing the data.file..."
bzip2 -v data.file  ##-v显示文件的详细信息,在压缩的过程中,会删除原文件,可以使用--k来保持原文件不被删除

if [ $? -eq 0 ]
then
        echo
        echo "Done"
        echo

        #查看压缩后的体积大小
        echo "Our data file has been renameed to 'data.file.bz2'"
        echo " `file data.file.bz2`"
        echo " `ls -l data.file.bz2`"
fi
exit 0