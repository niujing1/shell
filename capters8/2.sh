#!/usr/bin/env bash

#假如目录中有a.txt   b,txt   c.txt  tmp.1  tmp.2  tmp.3这积累文件
#根据指示的条件,显示出文件
#(1) 显示文件名以*。txt结尾的
#(2) 显示文件名以a或b结尾的
#(3) 显示文件名不是以a或b结尾的
#(4) 显示文件名以a b c开头的
#(5) 以tmp开头,1,3的数字结尾

#临时目录
 TMPDIR=globbing

 #创建linshimul
 mkdir $TMPDIR

 cd $TMPDIR

 #创建一些文件来显示通配符匹配
 touch a.txt  b.txt  c.txt

 count=1
 while [ "$count" -le 4 ]
 do
         touch "tmp.$count"
         let count+=1
 done

 echo

 #使用通配符显示文件
 echo "OUTPUT from ls * :"
 ls *

##显示文件名以字母a 或 b开头的文件
ls  [ab]*

##显示文件名不是以字母a 或 b开头的文件
 echo
 echo "OUTPUT from ls [^ab]* :"
 ls  [^ab]*
 ##一般情况下,通配符*不会匹配隐藏文件,要./[.]bashrc这样用


 ##显示文件名不是以字母a 或 b开头的文件
  echo
  echo "OUTPUT from ls [!ab]* :"
  ls  [!ab]*

  ##显示文件名不是以字母a 或 b c开头的文件
  echo
  echo "OUTPUT from ls [a-c]* :"
  ls  [a-c]*

  ##显示文件名不是以字母a 或 b c开头的文件
  echo
  echo "OUTPUT from ls tmp.[1-4] :"
  ls  tmp.[1-4]

  #返回之前的目录
  cd- >/dev/null

#清除临时目录
  echo
  echo "Clean up tempdir..."
  rm -rf $TMPDIR
  exit 0