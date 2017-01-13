#!/usr/bin/env bash

##--------未测试通过--------
#通过switch实现更简单的菜单选择
echo
echo "Which directory do you want to list:"
echo "(Press \"Enter\" directory to show menu again)"
echo

#把要显示的菜单项写在in后边的列表里
select dir in /bin/ /usr/bin/ /usr/local/bin/ /sbin/ /usr/sbin/ /usr/local/sbin/ /usr/share/ quit
do
        case $dir in
        quit )
            #如果用户选择quit,退出脚本
            echo
            echo "You entered quit , Bye"
            break
            ;;
        /* )
            #匹配选择目录,$dir以/开头说明用户选择了某一个目录
            echo
            echo "You selected directory \"$dir\",it contains folling lines"
            echo

            #显示所选目录下的内容
            ls -l $dir
            ;;
        * )
            #匹配其它所有的输入
            echo
            echo "Errot,invalid selection \"$REPLY\",choose again"
            ;;
        esac

        echo
        echo "Which directory do you want to list:"
        echo $dir
        echo "(Press \"Enter\" directory to show menu again)"
        echo

done

exit 0