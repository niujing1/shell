#!/usr/bin/env bash

awk -F: '{printf "|%18s|\n",$1;}' /etc/passwd  #占用18个字节的宽度,不够空格补气
awk -F: '{printf "|%-18s|\n",$1;}' /etc/passwd  #占用18个字节的宽度,左对齐