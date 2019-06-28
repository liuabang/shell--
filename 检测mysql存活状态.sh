#!bin/bash
#功能:检测mysql服务是否存活
#作者:liusingbon
# host为你需要检测的mysql主机的IP 地址,user为mysql账户名,passwd为密码; 这些信息需要根据实际情况修改后方可使用
host=127.0.0.1
user=root
passwd=123456
mysqladmin -h 127.0.0.1 -u root -p'$passwd' ping &>/dev/null
if [ $? -eq 0 ];then
   echo "MySQL is UP"
else
   echo "MySQL is down"
fi
