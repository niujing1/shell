#!/usr/bin/env bash

pwd #查看当前所在的文件夹

ls -l ~/www/test/ #列出目录下的文件详细信息

cd ~/www/test/  #进入test目录

pwd -L #显示逻辑上的当前工作目录
pwd -P #显示物理上的当前工作目录

#定义整个路径
PATHNAME=~/www/shell/capters1/1.sh

echo
echo -e "The whole pathname:\n\t $PATHNAME"
echo
exit 0

#执行dirname得到目录名
DIRNAME=$(dirname $PATHNAME)

echo "Get directory using:dirname [PATHNAME]"
echo -e "The directory name:\n\t$DIRNAME"
echo

exit 0


