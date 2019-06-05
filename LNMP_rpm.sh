#!bin/bash
#功能:该脚本基于Nginx服务器,实现LNMP平台的自动化安装. 
#作者:liusingbon
yum -y install httpd
yum -y install mariadb mariadb-devel mariadb-server
yum -y install php php-fpm php-mysql
#服务开机自启
systemctl start httpd   
systemctl enable httpd
systemctl start mariadb
systemctl enable mariadb
systemctl start php-fpm
systemctl enable php-fpm
