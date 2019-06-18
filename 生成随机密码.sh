#!bin/bash
#功能:运行脚本自动生成8位随机密码
#作者:liusingbon
#!/bin/bash
strings="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"   //定义字串内容
password=""  
for i in {1..8}
do
num=$[RANDOM%52]    //利用RANDOM获取随机数字
tmp=${strings:$num:1}   //截取字符,每次1个,格式 ${变量名:起始位置:长度}
password=$password$tmp
done
echo $password

