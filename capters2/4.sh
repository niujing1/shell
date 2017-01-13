#!/usr/bin/env bash

#统计文件中的行数 字数 字节数,输出依次是行数 字数 字节数
wc ~/www/shell/capters/1.sh

#使用wc -c来验证tail -c 输出的字节数
tail -c 100 ~/www/shell/capters/1.sh | wc -c



