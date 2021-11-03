#!/bin/bash

source components/common.sh

Print "Installing NodeJS\t\t"
yum install nodejs make gcc-c++ -y &>>$LOG
Status_Check $?

Print "Adding Roboshop User\t\t"
id roboshop &>>$LOG
if [ $? -eq 0 ]; then
  echo "User alread there, so skipping" &>>$LOG
else
  useradd roboshop &>>$LOG
fi
Status_Check $?

Print "Downloading Catalouge Content\t"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG
Status_Check $?

Print "Extracting Catalouge\t\t"
cd /home/roboshop
rm -rf catalogue && unzip /tmp/catalogue.zip &>>$LOG && mv catalogue-main catalogue
Status_Check $?

Print "Downloading NodeJS Dependencies"
cd /home/roboshop/catalogue
npm install --unsafe-perm &>>$LOG
Status_Check $?

chown roboshop:roboshop -R /home/roboshop

Print "Setup SystemD Service\t\t"
sed -i -e 's/MONGO DNSNAME/mongodb.roboshop.internal/' /home/roboshop/catalouge/systemd.service
mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service && systemctl daemon-reload && systemctl start catalogue &>>$LOG && systemctl enable catalogue &>>$LOG
Status_Check $?