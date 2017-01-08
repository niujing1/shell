#!/usr/bin/env bash
#使用rm删除文件

ls -l ~/www/test/test.php #确认文件存在

rm ~/www/test/test.php

rm -i  ~/www/test/test.php #会出现用户确认提示框.

rm  ~/www/test #会删除失败,rm不能删除非空目录,可以使用rmdir


mkdir noempty #创建一个文件夹
touch noempty/.stuff #创建一个隐藏的文件

ls -l noempty/.stuff #显示目录不为空

rmdir noempty #删除失败,提示目录为非空

ls -l noempty/.stuff #显示目录不为空返回1

rm -r -v noempty #rm是删除文件的,若想要删除目录加上选项-r表示递归删除


