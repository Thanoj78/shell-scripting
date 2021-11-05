#!/bin/bash

source components/common.sh

Print "Installing NodeJS\t\t"
yum install nodejs make gcc-c++ -y &>>$LOG
Status_Check $?

Print "Adding Roboshop user\t\t"
id roboshop &>>$LOG
if [ $? -eq 0 ]; then
  echo "User alread there, so skipping" &>>$LOG
else
  useradd roboshop &>>$LOG
fi
Status_Check $?

Print "Downloading catalogue content\t"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG
Status_Check $?

Print "Extracting Catalogue Content\t"
cd /home/roboshop
rm -rf catalogue && unzip -o /tmp/catalogue.zip &>>LOG && mv catalogue-main catalogue
Status_Check $?

Print "downloading NodeJS Dependencies"
cd /home/roboshop/catalogue
npm install --unsafe-perm &>>$LOG
Status_Check $?

chown roboshop:roboshop -R /home/roboshop

Print "Setup SystemD Service"
sed -i -e 's/MONGO_DNSNAME/mongodb.roboshop.internal/' /home /roboshop/systemd.service
Status_Check $?

Print "Setup SystemD Service"
mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service && systemctl daemon-reload && systemctl start catalogue &>>$LOG && systemctl enable catalogue
Status_Check $?
