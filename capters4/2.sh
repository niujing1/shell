#!/usr/bin/env bash

#一个进程在执行的过程中,可以输入其它命令,但不会被执行
#eg:ls尽管它执行的时间很短,但在执行的过程中,命令提示符依然被它占据,不能执行其它的命令
#编译Linux kernel,make需要较长时间,怎么放到后台运行 ?
#make 后边加上&  eg : make &
make>make.out 2>&1 &  #将标准错误重定向输出到文件make.out

#查看当前终端的后台进程
jobs

cat - #从终端读入,而不是从文件读入

#ctrl+z终止前台进程(用jobs查看可发现状态是stopped),执行bg把挂起的进程放到后台继续执行
#(用jobs查看可发现状态是running)

stty #显示当前终端的配置

#从运行后台进程的终端shell推出,会同事杀死作为子进程的后台进程,若要防止这种事的放生,
#在要执行的命令前加上nohup,这样附近吃退出之后进程由init进程接管

nohup make>make.out 2>&1 &  #将标准错误重定向输出到文件make.out

#使用jobs查看进程状态,可以发现是stopped状态
jobs

#使用bg把挂起的进程移到后台继续执行
bg %1  #1是进程挂起时返回的任务号  %任务号,可以快速唤起一个进程

#使用jobs查看进程状态,可以发现是running状态
jobs

#使用ctrl+z使得前台进程被挂起之后,当前的终端提示符可以再次使用,被挂起的进程仍在系统内存里,只是它不在获得CPU时间,被
# 暂停在那里,此时可以使用bg命令把它放到后台执行,也可以使用fg命令,把它放回前台执行

#当前进程退出时,由它创建的子进程也会被退出,可以在执行的命令前加nohu避免
#这样可以在父进程退出时,让init进程来接管后台进程
#tty006  代表是终端进程,若是? 代表是非终端进程

##重要提示:
#后台执行的程序要使用重定向操作是,一定要把后台的运行富豪&放到命令行的最后,否则重定向命令操作符会失去作用
#fg  bg命令操作是,任务号的前边要加上%
#后台进程没有正常结束之前退出终端,会终止后台进程,使用nophup命令保证后台进程的执行
