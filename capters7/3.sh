#!/usr/bin/env bash

#while
#定义要测试的网络
NETWORK=192.168.1

#定义检测的起始地址
IP=30

#只要IP地址小于130,循环体会被执行
while [ "$IP" -lt "130" ]
do
      echo -en "Pinging ${NETWORK}.${IP}..."
      #变量NETWORK和IP组合在一起构成IP地址
      #执行命令ping检测IP地址的连通,所以,并不显示任何输出
      ping -c1 -w1 ${NETWORK}.${IP}>/dev/null 2>&1
      ## -c1是发送一个echo_requst包
      ## -w1是指定每次ping的时间1s,无论是否收到回包都要停止执行、
      #   0代表成功收包,通信成功 其它代表通信失败


      #根据命令的ping的退出状态值是否为0,判断网络是否联通
      if [ "$?" -eq 0 ]
      then
            #如果ping的结果退出状态等一0,打印ok
             echo "OK"
       else
              echo "Filed"
       fi

       #IP地址加1
       let IP=$IP+1
done

exit 0