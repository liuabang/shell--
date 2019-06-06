#!bin/bash
#功能:实时监控本机内存和硬盘剩余空间,剩余内存<500M,根分区剩余空间<1000M时,发报警邮件给管理员. 
#作者:liusingbon
disk_size=$(df / |awk '/\//{print $4}') #提取根分区剩余空间
mem_size=$(free|awk 'Mem/{print $4}')  #提取内层剩余空间
while :
do
    if [$disk_size -le 512000 -a $mem_size -le 10240000 ];then #内层和磁盘空间大小默认以KB计算
       mail -s warning root <<EOF  #下一行开始，直到遇见“EOF”为止，所有的字符都按照指定的格式存入邮件中
       Insufficient resources,资源不足  #邮件警告的内容
       EOF
            
    fi
done
