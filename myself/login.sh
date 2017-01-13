#!/usr/bin/env bash

#如果用户名为nj并且登录密码为nj,则登录成功,同时发送邮件
read -p "name:" name
read -p "pass:" pass
if [ "$name" = 'nj' ] && [ "$pass" = 'nj' ]
then
       echo 'login success'|mail -s 'login successs' nj@Niujingmf@123
else
       echo 'login fail,sombody try to login your computer'|mail -s 'warning' nj@Niujingmf@123
fi