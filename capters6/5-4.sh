#!/usr/bin/env bash

##根据上一条命令是否执行成功,进入不同的分支
# 使用$$  $? 来判断
NEWDIR=~/www/shell/capters6/newdir
NEWFILE=newfile

#指定log文件为test.log
LOGFILE=`basename $0 .sh`.$$.log ## $$当前进程号

#在当前目录下创建目录
mkdir $NEWDIR

if [ $? -eq 0 ]
then

         #成功创建log目录
         echo "Creating Directory '$NEWDIR' succeed"
         #在log目录中创建log文件
         echo "Creating Directory '$NEWDIR' succeed">>$NEWDIR/$LOGFILE

         #改变当前工作目录为newdir
         cd $NEWDIR

         if [ $? -eq 0 ]
         then
               echo "`date`: Changing Current Directory to '$NEWDIR' success"
               #当前工作目录改变,所以使用OLDPWD
               echo "`date`: Changing Current Directory to '$NEWDIR' success">>$NEWDIR/$LOGFILE

               #然后创建一个新的文件
               touch $NEWDIR/$LOGFILE
               if [ $? -eq 0 ]
               then
                       echo "`date`: Creating new file in directory '$NEWDIR' success"
                       echo "`date`: Creating new file in directory '$NEWDIR' success">>$NEWDIR/$LOGFILE
               else
                       # $? !=0 意味这失败
                       echo "`date`: Creating new file in directory '$NEWDIR' fail"
                       echo "`date`: Creating new file in directory '$NEWDIR' fail">>$OLDPWD/$LOGFILE
               fi
         else
        echo "`date:` Changing Current Directory to '$NEWDIR' fail"
        #当前工作目录改变,因此使用OLDPWD
        echo "`date:` Changing Current Directory to '$NEWDIR' fail">>$OLDPWD/$LOGFILE
        fi
else
       echo "`date:` Changing Current Directory to '$NEWDIR' fail"
        #当前工作目录改变,因此使用OLDPWD
       echo "`date:` Changing Current Directory to '$NEWDIR' fail">>$OLDPWD/$LOGFILE
fi

echo "Please check log file $LOGFILE"
echo

exit 0