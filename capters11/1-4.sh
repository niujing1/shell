#!/usr/bin/env bash

#查找用户为nj 文件以*.c 或者 *.sh 结尾 属性为644,8天之内为访问的文件,
#-o表示条件之间是或的关系,-a表示条件之间是与的关系 -perm指定文件权限
# !逻辑取反 !\(-name '*.sh' -o -name '*.h'\) 所有的不是sh 或者 h结尾的文件
find / -user nj -a \(-name '*.sh' -o -name '*.h'\) -a -perm 644 -a -atime +8 -print