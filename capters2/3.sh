#!/usr/bin/env bash

#查看文件内容
cat /etc/passwd

# -n 给输出行前边加上行号,-b给非空行加上行号,非空行仍然输出,只不过不显示行号
cat -n ~/www/shell/capters/1.sh

#分页显示文件内容more或者less
more ~/www/shell/capters/1.sh
less ~/www/shell/capters/1.sh


#head只显示前几行,不指定-n,默认为10  选项-c指定输出多少个字符
head -n 10 ~/www/shell/capters/1.sh
head -c 10 ~/www/shell/capters/1.sh

#tail只显示后几行
tail -n 10 ~/www/shell/capters/1.sh
tail -c 10 ~/www/shell/capters/1.sh #只输出10个字符

#选项-f动态显示最新的内容,只要有新的内容追加,就读取最新的记录
tail -f ~/www/shell/capters/1.sh

