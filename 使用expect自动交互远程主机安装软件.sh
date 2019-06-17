#!bin/bash
#功能:使用expect工具自动交互密码,远程到其它主机,安装httpd软件
#作者:liusingbon
#删除~/.ssh/known-hosts后,ssh远程任何主机,系统都会询问是否确认要连接到该主机
rm -rf ~/ssh/known_hosts 
expect <<EOF  #下一行开始,所有字符都按照指定格式存入expect,知道遇见EOF为止.
spawn ssh 192.168.4.254
expect "yes/no" {send "yes\r"}
expect "password"  {send "密码\r"}   #根据自己的实际情况,将"密码"修改为真实的密码字串
expect "#"         {send "yum -y install httpd\r"}
expect "#"         {send "exit\r"}
EOF
