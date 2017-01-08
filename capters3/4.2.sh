#!/usr/bin/env bash
#把输出结果保存到文件中的同事在屏幕上依然看到输出结果
#比如,把/etc/passwd文件中的每一行都根据字母排序,把结果输出的同时,保存到sort文件

#首先对文件/etc/passwd进行排序,然后添加行号
#对标准输入进行赋值,一个输出到标准输出,一个输出到文件

sort /etc/passwd |cat -n |tee sort.out sort2.out #可以同时跟多个文件
#cat -n只是给排序结果加上行号,然后作为tee命令的输入


