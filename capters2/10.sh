#!/usr/bin/env bash

#�����ļ���Ŀ¼
ls -l src dest #��ʾ�ļ�������

cp -v src/test dest #��src�ļ����µ�test ���Ƶ�dest��

ls -l -i src/ dest/ # ��ʾ�ļ����Ƴɹ�



mkdir -v a b #ͬʱ����a b �����ļ���

ls -l a b #�鿴�����ļ��е�����

cp a/ b/  #cpĬ�ϲ��ܸ���Ŀ¼

cp -r a/ b/ #ʹ��-rѡ��ɹ�����aa�µ��ļ���bĿ¼

rm -r a/b/ # ɾ��Ŀ¼����ߵ��ļ�

cp -r -v -P a/ b/ #ʹ��-pѡ���child��parentĿ¼
