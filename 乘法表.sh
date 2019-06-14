#!bin/bash
#功能: 打印9*9乘法表
#作者:liusingbon
for i in $(seq 9)  #定义循环变量i
do
     for j in $(seq $i)   #定义循环变量j
     do 
        echo -n "$i*$j=$[i*j]"   #生成输出结果的表达式
     done
     echo
done
