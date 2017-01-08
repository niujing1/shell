#!/usr/bin/env bash

#文件备份
#把一个分区复制到一个文件中
#sudo dd if=/dev/tty of=tty_partution.img
sudo dd if=~/www/shell/capters1 of=tty_partition.img

[sudo] password for nj:

#恢复分区
#sudo dd if=tty_partution.img of=if=/dev/tty
sudo dd if=tty_partition.img of=~/www/shell/capters1

#把一个硬盘复制到另一个相同大小的硬盘中
sudo dd if=/dev/sda of=/dev/sdb

#把整个硬盘备份到一个文件中
sudo dd if=/dev/sdb of=disk.img

#恢复整个硬盘
sudo dd if=/dev/disk.img of=sdb

#备份整个硬盘并压缩数据
sudo dd if=/dev/sdb | bzip2>~/disk_image.bz2

#把压缩数据恢复到硬盘
bunzip2 -c ~/disk_image.bz2|sudo dd of=/dev/sdb

#备份硬盘住引导纪录
sudo dd if=/dev/sda of=~/mbr.img count=1 bs=512

#备份光盘镜像
sudo dd if=/dev/cdrom of=cdrom.iso

#使用随机数据破坏硬盘数据
sudo dd if=/dev/urandom of=/dev/sda1


