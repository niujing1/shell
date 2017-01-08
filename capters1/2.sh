#!/usr/bin/env bash
ls -ld ~/www/shell/capters1/*

#查看命令是内建命令还是外部命令
type -a cd #从运行结果可以看到cd是内建命令 pwd既有一个内部命令,也有一个外部版本
type -a pwd

#logout 退出shell进程

#在当前文件夹下编译内核模块
# cd ...   make -C
#/lib/modules/$(uname -r)/build M=$PWD modules

#在修改文件内容后重新执行编译 !!
#清理编译文件 make -C
#/lib/modules/$(uname -r)/build M=$PWD clean

#显示历史命令
history