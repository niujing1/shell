#!/usr/bin/env bash

#for实现,更改文件目录并为每一个文件名添加前缀
#在主目录下创建测试目录
mkdir ${HOME}/aaa>./error.log 2>&1

#如果创建失败
if [ $? -ne 0 ]
then
        echo "Directory ${HOME}/aaa has already exists"
        echo "Do Nothing,Abort!"
        exit 1
else
        echo "Create directory ${HOME}/aaa"
fi

echo "cp *.sh files into diractory ${HOME}/aaa,and prefix \"test_\" before each filenam"

#遍历当前目录下的所有txt文件
for FILE in `ls -1 *.txt` ##这里是1不是l,意思是每一行的文件名都在同一行显示
do
        #把文件复制到刚刚创建的目录下,并且重命名为test_*
        cp $FILE ${HOME}/aaa/test_$FILE
        #为每一个文件添加可执行权限
        chmod -x ${HOME}/aaa/test_$FILE
done

exit 0