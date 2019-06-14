#!bin/bash
#功能:显示软件安装的进度条################
#作者:liusingbon
function jindu {
while :
do
       echo -n "#"  //输出符号#
       sleep 0.2
done
}
jindu &
cp -a $1 $2
killall $!
echo "拷贝完成"
