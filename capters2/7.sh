#!/usr/bin/env bash

#�������ļ�Ŀ¼
touch oldname #����һ���µ��ļ�

ls -l oldname #��ʾ�ļ��������ɹ�

mv oldname newname #�������ļ�Ϊnewname

ls -l oldname #�������ɹ���ԭ�ļ�������

ls -l newname #����������ʾ�µ��ļ���



#�������ļ���
mkdir olddir #����һ���ļ���

ls -l -d -F olddir #���Ŀ¼�Ƿ����

mv olddir newdir #��olddir������Ϊnewdir

ls -l -d -F olddir #�鿴��ǰ���ļ���,��ʾĿ¼������

ls -l -d -F newdir #�鿴�µ�Ŀ¼��

