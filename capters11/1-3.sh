#!/usr/bin/env bash

#查找5天前修改的文件
find . -type f -mtime +5 -print

#查找6天气修改的文件
find . -type f -mtime 6 -print

# 查找3天以前修改,但是修改时间不超过4天的
find . -type f -mtime +3 -mtime -4 -print

