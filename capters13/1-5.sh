#!/usr/bin/env bash

#替换test。txt中的/test为 /nj/test,使用\转义
cat ~/www/shell/capters13/test.txt |sed -n 's/\/test/\/nj\/test/p'

#使用其它的分隔符
cat test.txt |sed  -n  's:/test:/nj/test:p'