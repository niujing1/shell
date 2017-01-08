#!/usr/bin/env bash

##数组变量

#数组元素从0开始
index=0  #赋值运算的两边不能有空格

#从passwd文件中取出所有用户
#指定分隔符为冒号,使用cut从passwd文件的每一行中提取出用户名
for i in `cut -f 1 -d":" /etc/passwd`
do
     #把每一个用户的用户名赋值给user数组的元素
     user[$index]=$i
     #每赋值一个用户之后把索引加1
     let index=$index+1
done

#重复使用变量index作为行号
index=1

#使用字符@分割所有的数组元素
#如果没有使用双引号引用,使用${user[*]}也可以
for name in "${user[@]}"
  ##在使用""时,${user[@]}和${user[*]}的区别是
  ## * 在扩展以后得到的所有元素是一个整体
  ## @ 在扩展以后得到的是一个分散的列表
  ## 去掉"" 两者是一样的
do
      echo "$index:$name"
      #行号加1
      let index=$index+1
done

echo "---------------------"
echo "Print all users in one line"
echo  #空的echo会输出空行
echo

#把所有的元素作为一个整体进行打印
echo "${user[*]}"

#把数组元素作为单个的个体进行打印
echo ${user[@]}
echo ${user[*]}
echo

echo "------------------------"

#对数组元素重新赋值,前50个元素会丢失
#即使没有明确的覆盖他们
echo "Reassign the user array,the user names will lost"
user=([50]=zhangze,test,tt)
echo
echo ${user[*]}
echo ${user[3]}
##TODO:引用数组时,如果没有{},
# 得到的是数组的第一个元素的值后边在加上[3]因为shell在遇到$之后会寻找后边的变量名
#一旦找到就会用它的值替换$user,因此$user[3]就变成root[3],而不是user的第四个元素
echo

#unset array[136] ## 删除数组中的一个元素,其它的元素仍会存在


##下边三个是删除所有的元素
unset array
unset array[@]
#unset array[*]
echo ${user[*]}


exit 0