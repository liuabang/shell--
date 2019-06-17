#!bin/bash
#功能:实现自动点名.
#作者:liusingbon
#请准备一个包含姓名等信息的文件,一行一个名字,脚本每次随机显示一个名字
while :
do
line=$(cat user.txt|wc-l)  #统计姓名表中有多少个名字
num=$[RANDOM%line+1]  #利用随机函数RANDOM
sed -n "${num}p" user.txt
sleep 0.2   //控制速度
clear 
done
