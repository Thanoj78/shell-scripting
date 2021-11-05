#!/bin/bash

source components/common.sh
Print "install Yum Utilities & Download Redies Repos"
yum install epel-release yum-utils http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y &>>$LOG
Status_Check $?

Print "Setup Redies Repos\t\t\t"
yum-config-manager --enable remi &>>$LOG
Status_Check $?

Print "install Redies\t\t\t\t"
yum install redis -y &>>$LOG
Status_Check $?

Print "Configure Redies Listen Address\t\t"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/redis.conf
Status_Check $?

Print "Start Redies Services\t\t\t"
systemctl enable redis &>>$LOG && systemctl start redis &>>$LOG
Status_Check $?
