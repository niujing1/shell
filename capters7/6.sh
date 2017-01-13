#!/usr/bin/env bash

####-----未测试通过-------
##select循环,快速创建菜单

 echo
 echo "Which directory do you want to list:"
 echo "(Press \"Enter\" directory to show menu again)"
 echo

 #把要显示的菜单项写在in后边的列表里
select dir in /bin/ /usr/bin/ /usr/local/bin/ /sbin/ /usr/sbin/ /usr/local/sbin/
do
        if [ !-z $dir ]
        then
                if [ $dir = $quit ];
                then
                        #如果用户选择quit,退出脚本
                        echo "You entered quit , Bye"
                        break;
                else
                        #用户选择了一个目录
                        echo $dir
                        echo
                        echo "You selected directory \"$dir\",it contains folling lines"
                        echo

                        #显示所选目录下的内容
                         ls -l $dir
                fi
        else
                echo
                echo "Errot,invalid selection \"$REPLY\",choose again"
        fi

        echo
        echo "Which diretory do you want to list:"
        echo "(Press \"Enter\" directory to show menu again)"
done

exit 0
