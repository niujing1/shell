#!/usr/bin/env bash
#ʹ��rmɾ���ļ�

ls -l ~/www/test/test.php #ȷ���ļ�����

rm ~/www/test/test.php

rm -i  ~/www/test/test.php #������û�ȷ����ʾ��.

rm  ~/www/test #��ɾ��ʧ��,rm����ɾ���ǿ�Ŀ¼,����ʹ��rmdir


mkdir noempty #����һ���ļ���
touch noempty/.stuff #����һ�����ص��ļ�

ls -l noempty/.stuff #��ʾĿ¼��Ϊ��

rmdir noempty #ɾ��ʧ��,��ʾĿ¼Ϊ�ǿ�

ls -l noempty/.stuff #��ʾĿ¼��Ϊ�շ���1

rm -r -v noempty #rm��ɾ���ļ���,����Ҫɾ��Ŀ¼����ѡ��-r��ʾ�ݹ�ɾ��


