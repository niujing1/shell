#!/usr/bin/env bash

#�鿴�ļ�����
cat /etc/passwd

# -n �������ǰ�߼����к�,-b���ǿ��м����к�,�ǿ�����Ȼ���,ֻ��������ʾ�к�
cat -n ~/www/shell/capters/1.sh

#��ҳ��ʾ�ļ�����more����less
more ~/www/shell/capters/1.sh
less ~/www/shell/capters/1.sh


#headֻ��ʾǰ����,��ָ��-n,Ĭ��Ϊ10  ѡ��-cָ��������ٸ��ַ�
head -n 10 ~/www/shell/capters/1.sh
head -c 10 ~/www/shell/capters/1.sh

#tailֻ��ʾ����
tail -n 10 ~/www/shell/capters/1.sh
tail -c 10 ~/www/shell/capters/1.sh #ֻ���10���ַ�

#ѡ��-f��̬��ʾ���µ�����,ֻҪ���µ�����׷��,�Ͷ�ȡ���µļ�¼
tail -f ~/www/shell/capters/1.sh

