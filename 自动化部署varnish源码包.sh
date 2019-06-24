#!bin/bash
#功能:自动化部署 varnish 源码包软件,运行脚本前,需提前下载 varnish-5.0.0.tar.gz
#作者:liusingbon
yum -y install gcc readline-devel pcre-devel
useradd -s /sbin/nologin varnish
tar -xf varnish-5.0.0.tar.gz
cd varnish-5.0.0
#使用 configure,make,make install 源码安装软件包
./configure --prefix=/usr/local/varnish
make && make install
#默认安装完成后,不会自动拷贝或安装配置文件到 Linux 系统,所以需要手动 cp 复制配置文件
cp redhat/varnish.initrc /etc/init.d/varnish
cp redhat/varnish.sysconfig /etc/sysconfig/varnish
cp redhat/varnish_reload_vcl /usr/bin/
#创建快捷方式
ln -s /usr/local/varnish/sbin/varnishd /usr/sbin/
ln -s /usr/local/varnish/bin/* /usr/bin
#使用 uuidgen 生成一个随机密钥的配置文件
mkdir /etc/varnish
cp /usr/local/varnish/etc/varnish/default.vcl /etc/varnish/
uuidgen > /etc/varnish/secret
