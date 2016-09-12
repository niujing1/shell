#!/usr/bin/env bash

#建立文件和目录的符号连接
ls -s ~/www/test/ link_to_test #创建目录test的符号连接

ls -s ~/www/test/test.php link_to_test #创建文件test.php的符号连接

ls -l -Flink_to_* #查看连个符号连接

cd link_to_test #通过符号连接改变工作路径

pwd -L #显示当前工作目录的逻辑值(使用ln之后可以清楚的看到差别)

pwd -P #显示当前工作目录的实际值

#添加内容之后可以看出来,link里边和实际的工作路径里边的内容是一样的