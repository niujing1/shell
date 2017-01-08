#!/usr/bin/env bash
#每周五定时清理ftp服务器上的文件
#检测 /var/ftp/pub目录,将其中的子目录及文件的详细列表信息,当时的时间信息追加保存到/var/log/pubdir.log,然后,清空目录

date >> ~/www/shell/myself/pubdir.log
ls -lhR ~/www/shell/Log/2.txt >> ~/www/shell/myself/pubdir.log
rm -rf ~/www/shell/Log/*