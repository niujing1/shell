#!/usr/bin/env bash

#打包的同时压缩文件
ls -l #查看文件
tar czvf all.tar.gz *  #使用tar工具创建gzip的tar包文件
ls -l all.tar.gz  #检查被压缩的tar包文件
file all.tar.gz #查看文件信息