#!/usr/bin/env bash

#提取出passwd文件中某一行的3个字段
awk -F:'/^root:/ {print $1,$3,$6;}' /etc/passwd
