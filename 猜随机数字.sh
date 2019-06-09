#!bin/bash
#功能:利用RANDOM生成随机数,提示用户猜数字. 
#作者:liusingbon
num=$[RANDOM%100+1]     #赋值变量,利用取余算法获得1-100之间的随机数
while :    #无限循环
do
         read -p "计算机生成了一个1-100之间的随机数,请你猜猜: "  cai     #利用read与输入者产生交互
          if [ $cai -eq $num ];then      #使用数字类条件表达式判断,eq,ne,gt,lt,ge,le
              echo "恭喜,您才对了"
              exit   #猜成功了,自动退出脚本
          elif [ $cai -gt $num ];then
              echo "抱歉,数字猜大了"
          else
              echo "抱歉,数字猜小了"
          fi
done
