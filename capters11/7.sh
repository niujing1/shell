#!/usr/bin/env bash

#文件备份
#使用tar命令打包,然后在使用压缩

ls -l #显示当前文件夹下的文件
tar -cvf all.tar * #把这些文件全部打包到一个文件夹
ls -l all.tar #显示打包的tar包文件
tar -tvf all.tar #显示tar包中的文件列表
