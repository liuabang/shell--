#!bin/bash
#功能:批量修改文件的后缀名,比如: 将.txt文件修改为.doc文件
#作者:liusingbon
#执行脚本时,需要要脚本名后面添加位置参数
#例: 脚本名 txt doc (可以将以.txt结尾的文件修改为以.doc结尾)
#例: 脚本名 doc jpg (可以将以.doc结尾的文件修改为以.jpg结尾)
for i in "ls *.$1"
do
     mv $i  ${i%.*}.$2
done
