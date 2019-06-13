#!bin/bash
#功能:测试某个网段中的哪些主机处于up状态,哪些处于down状态
#作者:liusingbon
for i in {1..254}
do
        ping -c2 -i0.3 w1 192.168.4.$i &>/dev/null
        if [ $? -eq 0 ];then
           echo "192.168.4.$i is up"
        elif
           echo "192.168.4.$i is down"
        fi
done
#也可以通过while循环实现这个脚本
i=1
while [ $i -le 254 ]
do
        ping -c2 -i0.3 w1 192.168.4.$i &>/dev/null
        if [ $? -eq 0 ];then
           echo "192.168.4.$i is up"
        elif
           echo "192.168.4.$i is down"
        fi
        let i++
done

