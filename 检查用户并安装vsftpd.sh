#!bin/bash
#功能:检测用户是否为root,肯定则安装vsftpd
#作者:liusingbon
if   [ $USER == "root" ];then     //使用字符串对比方式,验证是否为root用户.
     yum -y install vsftpd
else  
      echo "你不是管理员,没有安装权限"
fi
#或者,使用UID来判断用户.
if   [ $UID -eq 0 ];then     //使用数字对比方式,验证是否为root用户.
     yum -y install vsftpd
else  
      echo "你不是管理员,没有安装权限"
fi
    
