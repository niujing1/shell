#!/usr/bin/env bash

#解压文件
#每个压缩工具都会有解压工具,如zip中的unzip  xz-utils中的unzx,bzip中的bunzip
#以bunzip为例

if [ -f ./data.file.bz2 ]
then
        #list the size of the file
        echo
        echo "this is our compressed data file:"
        #查看压缩后的体积大小
        echo " `ls -l data.file.bz2`"
        echo

        #解压缩文件data.file.bz2 可以得到文件data.file
        echo
        echo "Now uncompress the file 'data.file.bz2' back to 'data.file'"
        bunzip2 data.file.bz2

        echo
        echo "After uncompressing,file data.file.bz2 back to data.file..."
        echo

        echo "This is the origin data file:"

        # 检查data.file的类型和大小
        echo "`file data.file`"
        echo "`ls -l data.file`"
        echo "The size of 'data.file' equals to the original file size"
else
        echo
        echo "There is no compressed file named 'data.file.bz2' in current dir"
        echo "Please run bzip.sh first,then run this script"
fi

echo

exit 0