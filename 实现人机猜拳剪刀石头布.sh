#!bin/bash
#功能: 人机交互,实现猜拳(剪刀,石头,布)
#作者:liusingbon
game=(剪刀 石头 布)
num=$(RANDOM%3)  #通过随机数RANDOM获取计算机的出拳
computer=${game[$num]}   #将出拳的可能保存在一个数组中.game[0],game[1],game[2]保存了3种不同的可能值.
echo "请根据下列提示,选择你的出拳手势"
echo "1.剪刀"
echo "2.石头"
echo "3.布"
read -p "请选择数字1-3中的一个: " person
case $person in
1)
     if   [ $num -eq 0 ];then
          echo "平局" 
     elif [ $num -eq 1];then
          echo "你赢"
     else
          echo "计算机赢"
     fi;;
2)
       if   [ $num -eq 0 ];then
            echo "计算机赢"
       elif [ $num -eq 1 ];then
            ehco "平局"
       else
            echo "你赢"
       fi;;
3)
     if   [ $num -eq 0 ];then
          echo "你赢"
     elif [ $num -eq 1 ];then
          echo "计算机赢"
     else
          echo "平局"
     fi;;

echo "注意,你必须输入1-3之间的数字"



