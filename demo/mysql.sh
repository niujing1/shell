#!/usr/bin/env bash

#shell连接mysql数据库
#解决Linux下mysql.sock文件不存在的方法
#  查找到mysql.sock真正存在的位置  可以使用locate或者find
#  ln -s mysql.sock文件的位置   报错找不到的位置
#  也就是给mysql.sock创建一个快捷方式到mysql启动查找的位置
#  lsof -i:21 查看端口占用


MYSQL=`which mysql`
#password=root

#1.Windows下将sql数据库备份拷贝到磁盘目录如：F:\testdb.sql
#2.cmd进入命令行
#3.登陆mysql数据库：mysql -uroot -p登陆mysql服务器
#4.后执行导入数据命令
#mysql> use dbtest; //设置当前要导入数据的dbtest数据库
#mysql> set names utf8; //设置编码
#mysql> source F:\testdb.sql; //导入数据
addr=`which mysql`
mysql="$addr -uroot -p"
sql="show databases;use test;show tables;select * from t1;"
#sql="use test;show databases;"
$mysql -e "$sql"


exit 0