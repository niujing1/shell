#!/usr/bin/env bash
#TODO: 可以扩展为一个输入指定目录,指定扩展名的文件移动到desc文件夹的小程序

# 递归移动文件
#创建临时目录
mkdir -p ~/www/shell/tmp

#如果创建成果
if [ $? -eq 0 ]
then
        #在主目录下查找所有的mp3文件
        #把文件移动到指定文件夹
        #最后的分号代表子句的结束
        #-i不区分大小写
        #-print吧文件路径打印到标准输出
        # -exec和 ; 之间的内容就是它要处理的内容
        find ./ -iname "*.mp3" -print -exec mv '{}' ~/www/shell/tmp ';'
fi

echo
echo "All files moved"
echo

exit 0