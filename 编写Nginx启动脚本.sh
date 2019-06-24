#!bin/bash
#功能:本脚本编写完成后,放置在/etc/init.d/目录下,就可以被 Linux 系统自动识别到该脚本.
#如果本脚本命名为/etc/init.d/nginx,则 service nginx start 就可以启动该服务
#作者:liusingbon
#service nginx stop|restart|status  可以关闭,重启,查看Nginx服务
program=/usr/local/nginx/sbin/nginx
pid=/usr/local/nginx/logs/nginx.pid
function start{
               if [ -f $pid ];then
                  echo "nginx 服务已经处于开启状态"
               else
                  $program
               fi
            }
function stop {
              if [ -! -f $pid ];then
                 echo "nginx 服务已经关闭"
              else
                 $program -s stop
                 echo "关闭服务 ok"
              fi
             }
function status {
                if [ -f $pid ];then
                   echo "服务正在运行..."
                else
                   echo "服务已经关闭"
                fi
}
case $1 in
start)
       start;;
stop)
       stop;;
restart)
       stop
       sleep 1
       start;;
status)
       status;;
*)
       echo "你输入的语法格式错误"
esac
