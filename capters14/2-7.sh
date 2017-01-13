#!/usr/bin/env bash

awk -F: '{printf "%-18d\n",$1,length($1)}'/etc/passwd