#!/usr/bin/env bash

##通过getopts命令进行处理,然后使用变量替换{var:-value},根据用户是否知道
#了编辑器和显示程序来决定采取什么样的操作

#定义脚本使用函数
printf "www \c eee"
echo "www \c eee"
help()
{
        echo
        echo "Usage:`basename $0` [option] -f File"
        echo "Edit a Editable File using spacified Editor and Pager"
        echo
        echo -e " -e [Editor]\tEditor to edit the file:vim,pico,emacs,nano.."
        echo -e " -p [Pager]\tPager to view the file:less,more,cat,head.."
        echo
        exit 1
}

#关闭诊断信息
#OPTERR=0
#处理命令行选项和参数
while getopts f:e:p: OPTION  ##这里得到的
do
        case "$OPTION" in
                f)
                        #每一个选项的参数可以使用$OPTARG来访问
                        TARGET_FILE="$OPTION";;
                e)
                        EDITOR="$OPTION";;
                P)
                        PAGER="$OPTION";;
                \?)
                        #当遇到未知选项时,显示脚本的使用方法
                        help;;
        esac
done

#文件参数必须设置
echo $TARGET_FILE
exit 0
if [ -z "$TARGET_FILE" ]
then
        help
fi


echo

#确保文件是可读写的
if [ -r "../readme.txt" -a -w "../readme.txt" ]
then
       #询问用户是否想要编辑文件
       read -p "Do you want to Edit File(y/n)?"
       if [ "$REPLY"='y' -o "$REPLY"='Y' -o "$REPLY"='YES' ]
       then
               echo
               echo "Opening file '$TARGET_FILE' using ${EDITOR:-vim}"
               sleep 3

               #使用编辑器打开文件,如果变量EDITOR为空
               ${EDITOR:-vim} "$TARGET_FILE"
               echo "Thank you for editing the file"
       fi

       echo
       #询问用户是否想要查看文件内容
       read -p "Do you want to see the file just edited(y/n)?"
       if [ "$REPLY"='y' -o "$REPLY"='Y' -o "$REPLY"='YES' ]
       then
               echo
               echo "Opening file '$TARGET_FILE' using ${PAGER:-less}"
               sleep 3

               #显示文件内容,如果变量PAGER为空就使用less
               ${PAGER:-less} "$TARGET_FILE"
               echo "Thank you for editing the file"
       fi
       echo
       echo "Bye!"
       echo


else
       echo
       echo "File $TARGET_FILE can not be accessed,please select a writable and redable file"
       echo
       echo "Bye"
       echo
       exit 1
fi

exit 0