#!/usr/bin/env bash

#��ʾһ���ļ�����ϸ��Ϣ
ls -d -l ~/www/shell/readme.txt

#��ʾ�ļ���Ȩ����Ϣ
ls -l  ~/www/shell/readme.txt

#��ʾ�ļ��е�Ȩ��
ls -l -l -d ~/www/shell

chmod -x test/ #ɾ���ļ�Ŀ¼�Ŀ�ִ��Ȩ��

ls -l test/test.php #�ᱨ��,��û��Ȩ�޵�����²��ܲ鿴


ls -ld test/ #�鿴Ŀ¼Ȩ��.

chmod +x test/ #���Ŀ¼�Ŀ�ִ��Ȩ��.
echo "echo hello">test/test.sh  #��Ŀ¼�д�����ִ���ļ�
chmod +x test.sh

chmod -rw test/ #ɾ���ļ�Ŀ¼�Ķ�дȨ��
ls -l test/ #�ᱨ��,û��Ȩ�޶�ȡ.

ls -l test/echo.sh #���ǿ���ִ��
