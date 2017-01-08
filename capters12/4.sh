#!/usr/bin/env bash

#定时器,指定时间内没有合法输入,发送中断信号
#定义函数Expire_Handler扑火SIGNNAL信号

Expire_Handler(){
        echo
        echo "Got SIGNALARM signal,Waitting for Your info too long!"
        echo "Bye"

        #从脚本中以代码14推出,用来表示接收到了SIGNAKLARM信号
        exit 14
}

#定义函数,用来设置定时器
Start_Timer(){
        #如果没有指定参数,默认10s
        local INTERVAL=${1:-10}

        #检查参数大于0
        if [ $INTERVAL -gt 0 ]
        then
                #15s以后,发送信号SIGALRM到脚本进程
                sleep $INTERVAL && kill -s 14 $$ &

                #记住后台进程的PID,用来杀死定时器
                #如果用户在最后期限以前输入信息
                TIMERPID=$!
        else
                echo "Error:interval must be positive integer"
                exit 1
        fi
}

#定义函数,用来杀死后台进程,从而去除定时器
Unset_Timer(){
        #首先杀死子进程
        kill `pgrep -P $TIMERPID`

        #然后杀死父进程
        kill $TIMERPID
}

#设置定时器回调函数Expire——Handler来捕捉SIGNALARM信号
trap Expire_Handler 14

echo
echo "You have only 10s to enter your info"
echo

#把定时器的时间设置为10s
Start_Timer 3
read -p "Please enter your ID:" id

#如果用户在最后期限以前输入了信息,移除定时器
Unset_Timer

echo
echo "Your ID is:$id"
echo "Done"

exit 0