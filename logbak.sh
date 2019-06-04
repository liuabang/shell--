date=$(date+%Y%m%d)   #年月日
logpath=/usr/local/nginx/logs       
mv $logpath/access.log $logpath/access-$date.log   #实时备份access.log
mv $logpath/error.log $logpath/error-$date.log
kill -USER1 $(cat $logpath/nginx.pid) #打开新的日志,没有则自动生成文件xxx.log  
