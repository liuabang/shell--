#!bin/bash
#功能:统计当前 Linux 系统中可以登录计算机的账户有多少个
#作者:liusingbon
#方法1
grep 'bash$'   /etc/passwd|wc -l
#方法2
awk -f: '/bash$/{x++} end{print x}'  /etc/passwd
