#!/usr/bin/env bash

#/proc包含了很多硬件信息,如何查看

cat /proc/devices  #查看所以的可用设备,包括字符设备和块设备

cat /proc/cpuinfo #查看cpu信息

cat /proc/filesystem #查看支持的文件系统

cat /proc/ioports #查看系统的I/O端口

cat /proc/interrupts  #查看中断信息

cat /proc/modules # 查看模块儿列表

cat /proc/mounts #查看挂载的文件系统

cat  /proc/swaps # 查看交换分区的使用情况

cat /prc/patitions #查看心疼分区的情况

cat /proc/version  #查看当前系统的内核版本


