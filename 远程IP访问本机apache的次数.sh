#!bin/bash
#功能:统计每个远程IP访问本机apache的次数
#作者:liusingbon
awk '{ip[$1]++} END{for(i in ip){print ip[i],i}}'  /var/log/httpd/access_log
