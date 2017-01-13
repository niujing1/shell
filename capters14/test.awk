#!/usr/bin/awk -f

#在awk脚本中不要再使用单引号包围程序
BEGIN{
	  printf("%-15s%-8s%-13s%-5s%-8s%-5s%s\n","Filename","Time","Size","Group","User","Link","Right");
	  printf("--------------\n");
}


#如果第一列不是total,则执行以下命令
#丢弃包含total的行

$1 !~/total/
{
	printf("%-15s%s\n",$1,$3);
}

#然后执行 ls -l | ./test.awk   ##ls -l的输出会作为awk程序的标准输入