#!/usr/bin/env bash

#删除一个目录下所有以.out结尾的文件

find . -name "*.out" | rm #会报错 rm没有操作对象

#解决方案:1 使用$(command)的方法使得命令command的输出作为命令行的参数
touch {1..3}.tt
rm -i $(find . -name '*.tt')

#另一中方式是使用命令替代的方式
touch {4..7}.tt
rm -i `find . -name '*.tt'`

#总结  rm只接受命令行参数,所以需要把之前运行的命令的结果作为命
# 令行参数 可以使用 $(command) 或者
