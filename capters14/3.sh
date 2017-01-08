#!/usr/bin/env bash

#递归扫描目录,统计出每隔用户拥有的文件数
#需要一个参数指定目录
if [ $# != 1 ]
then
        echo
        echo "Count how many files belog to which user"
        echo "Usage:"
        echo -e "\t `basename $0` [directory]"
        echo
        exit 1
fi

#递归的显示指定目录下的所有文件信息
ls -lR "$1"|awk '
#定义max函数,用来找出数组result中的最大值
function max(arr,i,max_num){
        max_num=0;
        for(i in arr){
            if(arr[i]>max_num){
                max_num=arr[i];
            }
        }
        return max_num
}

#定义函数process_length,计算要打印多少个#字符
funtion process_length(curlength,maxlength){
    return curlength/maxlength*50
}

BEGIN{
        printf "%-10.10s%8s","User Name","File Num";
}

#主循环
#只处理以-开始的行,也就是只处理普通文件
/^-/{
#每遇到一个普通文件,就把它的用户名作为索引值
#把相应的数组对象的值加1,当主循环结束后可以得到各个用户拥有的文件数
      result[$3]++
}

#当主循环结束后,计算并打印出进度条
END{
      max_lenth=max(result);
      #使用for遍历result中的所有用户,并打印出他们拥有多少个文件
      for(user in result){
            printf "%-10.10s [%8d]:",user,result[user];
            for(i=1;i<process_length(result[user],max_length);i++){
                    printf "#";
            }
            printf "\n";
      }
}
'

exit 0