#!/usr/bin/env bash

#�����ļ���Ŀ¼�ķ�������
ls -s ~/www/test/ link_to_test #����Ŀ¼test�ķ�������

ls -s ~/www/test/test.php link_to_test #�����ļ�test.php�ķ�������

ls -l -Flink_to_* #�鿴������������

cd link_to_test #ͨ���������Ӹı乤��·��

pwd -L #��ʾ��ǰ����Ŀ¼���߼�ֵ(ʹ��ln֮���������Ŀ������)

pwd -P #��ʾ��ǰ����Ŀ¼��ʵ��ֵ

#�������֮����Կ�����,link��ߺ�ʵ�ʵĹ���·����ߵ�������һ����