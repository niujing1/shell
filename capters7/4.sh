#!/usr/bin/env bash

##until循环,一直循环,直到满足退出条件

QUIT_COMMAND=quit

#直到用户输入的字符串是quit时,until循环退出
until [ "$USER_IPUT" = "$QUIT_COMMAND" ]
do
       echo "Please input command:"
       echo "(type command $QUIT_COMMAND to exit)"
       read USER_IPUT
       echo
       echo ">>your command is $USER_IPUT"

       # 对用户的输入进行匹配
       case $USER_IPUT in
               "open")
                       echo ">>opening..."
                       ;;
               "closing")
                       echo ">>closing....."
                       ;;
               *)
                       echo "Known command"
                       ;;
       esac
       echo
done

echo "Bye"

exit 0