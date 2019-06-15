#!bin/bash
#功能:使用死循环,实时显示eth0网卡发送的数据包流量
#作者:liusingbon
while :
do
       echo "本地网卡eth0的数据流量信息如下:"
       ifconfig eth0|grep "RX pack"|awk '{print $5}'
       ifconfig eth0|grep "TX pack"|awk '{print $5}'
       sleep 1
done
