#!/usr/bin/env bash
#其它查找方式
#locate
#查找文件名中包含whereis的文件
locate whereis


#不搜索中间路径,只匹配文件名 -b = --basename 过滤中间路径
locate -b whereis

#精确匹配文件名 \ 阻止了locate用*whereis*的格式查找
locate -b '\whereis'
