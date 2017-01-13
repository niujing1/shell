#!/usr/bin/env bash

#使用column命令格式化数据,并生成一个整齐的表格
#使用()把printf命令和ls -l命令的输出数据合并为一个整体(sed后跟的是1  而不是 l )
( printf "PERMISSIONS LINKS OWNER GROUP SIZE DATE HH:MM FILE-NAME\n";ls -l|sed 1d )|column -t