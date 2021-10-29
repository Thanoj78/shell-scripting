echo "Setting UP MongoDB Repo"

echo '[mongodb-org-4.2]
#name=MongoDB Repository
#baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
#gpgcheck=1
#enabled=1
#gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo

echo "Installing MongoDB"
yum install -y mongodb-org >/tmp/log
#
#echo "Configuring MongoDB"
#sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongo.conf
#
#echo "starting MongoDB"
#systemctl enable mongodb
#systemctl start mongodb
#systemctl restart mongodb
#
#echo "Dowloading MoangoDB Schema"
#curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip"
#
#cd /tmp
#unzip mongodb.zip >/tmp/log
#cd mongodb-main
#mongo < catalogue.js >/tmp/log
#mongo <user.js >/tmp/log
