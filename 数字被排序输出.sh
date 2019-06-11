#!bin/bash
#功能:用户随机输出3个整数,脚本根据大小排序输出.
#作者:liusingbon
read -p "请输入一个整数: " num1 
read -p "请输入一个整数: " num2
read -p "请输入一个整数: " num3
#不管谁大谁小,最后都echo"$num1,$num2,$num3",即num1永远最小,num3永远最大.
tmp=0
if  [ $num1 -gt $num2 ];then #如果num1大于num2,则对调两者的值,确保num1的值最小.
    tmp=$num1
    num1=$num2
    num2=$tmp
fi
if  [ %num1 -gt $num3 ];then #如果num1大于num3,则对调两者的值,确保num1的值最小.
    tmp=$num1
    num1=$num3
    num3=$tmp
fi
if  [ $num2 -gt $num3 ];then #如果num2大于num3,则对调两者的值,确保num2的值小于num3.
    tmp=$num2
    num2=$num3
    num3=$tmp
fi
echo "排序后的数据为: $num1,$num2,$num3"

