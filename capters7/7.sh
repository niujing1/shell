#!/usr/bin/env bash

##嵌套循环
#备份文件,保持原有目录结构

echo
echo "Backup Files"
echo "------------"

#遍历上级目录,备份其中文件
for DIR in ../log/*
do
       #检测文件是否存在
       if [ -d ${DIR} ]
       then
               #从路径中提取出最后的目录名
               basedir=`basename "${DIR}"`
               echo
               echo "create directory ${HOME}/www/shell/backup/${basedir}"
               echo "---------------------"
               echo

               #创建备份目录
               mkdir -p ${HOME}/www/shell/backup/${basedir}
               if [ $? -eq 0 ]
               then
                       #这里可以指定希望备份的文件类型,extension取出文件扩展名
                       for extension in sh c txt
                       do
                               #备份文件
                               echo -n "Backup \"${DIR}/*.${extension}\" to "
                               echo "\"${HOME}/www/shell/backup/${basedir}\" "
                               cp ${DIR}/*.${extension}  ${HOME}/www/shell/backup/${basedir}
                               echo "Done"
                       done
               else
                       echo
                       echo "> Backup directory \"${HOME}/www/shell/backup/${basedir}\" can not be create"
                       exit "> quit this backup programe"
                       exit 1
               fi
       else
               #如果DIR不是一个目录,跳过不处理
               echo
               echo "> \"$DIR\" is not a directory,skip it!"
               continue
       fi

done