#!/usr/bin/env bash

#下载工具
#Linux的wget和curl工具都可以通过网络下载文件

DOWNLOAD_FILE=make.tar.gz

#从文件名中去除后缀 .tar.gz
SOURCE_DIR=`basename $DOWNLOAD_FILE.tar.gz`

echo

#从gnu ftp服务器上下载make工具的源代码压缩包
if [ ! -f $DOWNLOAD_FILE ]
then
       echo "Begining to download.."
       echo
       #使用wget下载ftp上的文件
       wget ftp:gnu.org/pub/gnu/make/make-3.8.1.tar.gz

       #curl的使用和wget类似,不过会把下载的文件数据打印到终端屏幕砂锅,如果想要在硬盘上保存文件,需要使用标准输出重定向把
       #把下载的文件重定向到一个文件中
       #curl ftp:gnu.org/pub/gnu/make/make-3.8.1.tar.gz > make-3.8.1.tar.gz


       if [ $? -eq 0 ]
       then
               echo "Done,down successed"
               echo
               echo "before uncompress,it size is :"
               echo "`du -h $DOWNLOAD_FILE`"
               echo "Uncompress the source code.."
               #使用tar解包,不显示解压过程的输出
               tar -xzvf $DOWNLOAD_FILE > /dev/null

               if [ $? -eq 0 ]
               then
                       echo "Done , success"
                       echo
                       echo "After uncompress,size:"
                       echo "`du -h $SOURCE_DIR`"
               else
                       echo "Uncompress operationfailed!"
                       exit 1
               fi
       else
               echo "Wget can not operation failed"
               exit 1
       fi
else
       echo "$DOWNLOAD_FILE exists in current directory,abort!"
fi

echo

exit 0