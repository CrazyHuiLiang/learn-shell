#!/bin/bash
#备份文件

outputDir="../null/003"
backupDir="/private/etc"
#ntpdate asia.pool.ntp.org &>/dev/null
#同步系统时间

date=$(date +%y%m%d)
#把当前系统时间按照“年月日”格式赋予变量date

size=$(sudo du -sh $backupDir)
#统计mysql数据库的大小，并把大小赋予size变量

if [ -d $outputDir ]
  then
    echo ''
    #就算then之后不需要处理任何逻辑，then后面也必须跟一个语句
  else
    mkdir $outputDir
fi 

echo "Date: $date!" > $outputDir/dbinfo.txt
echo "Data size: $size" >> $outputDir/dbinfo.txt

cd $outputDir
sudo tar -zcPf ./etc_$date.tar.gz $backupDir dbinfo.txt
rm -rf dbinfo.txt



