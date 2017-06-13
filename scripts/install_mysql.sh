#!/bin/sh

#Install script for mysql database

export DEBIAN_FRONTEND=noninteractive 
#it leaves mysql with blank password and doesnt prompt
sudo groupadd mysql
sudo useradd -r -g mysql mysql
cd $1
sudo tar xvf mysql-server_5.6.21-1ubuntu12.04_amd64.deb-bundle.tar
if [ $? != 0 ];then echo "Unable to extract tar file."; exit 100; fi
#this tar file includes libaio package
sudo dpkg -i libaio1_0.3.109-2ubuntu1_amd64.deb
if [ $? != 0 ];then echo "Unable to install package libaio1."; fi

sudo dpkg -i mysql-common_5.6.21-1ubuntu12.04_amd64.deb
if [ $? != 0 ];then echo "Unable to install package mysql-common."; exit 100; fi

sudo dpkg -i mysql-community-server_5.6.21-1ubuntu12.04_amd64.deb
if [ $? != 0 ];then echo "Unable to install package mysql-community-server."; exit 100; fi

sudo dpkg -i mysql-community-client_5.6.21-1ubuntu12.04_amd64.deb
if [ $? != 0 ];then echo "Unable to install package mysql-community-client."; exit 100; fi

sudo mv /etc/mysql/my.cnf my.cnf.in
if [ $? != 0 ];then echo "Unable to move /etc/mysql/my.cnf."; exit 100; fi

sudo sed -e s/127.0.0.1/0.0.0.0/g my.cnf.in | sudo tee /etc/mysql/my.cnf
if [ $? != 0 ];then echo "Unable to configure my.cnf."; exit 100; fi
#updates mysql bind address in /etc/mysql/my.conf to 0.0.0.0 to allow external connection

sudo rm -f my.cnf.in
sudo rm -f mysql*
sudo rm -f libaio1_0.3.109-2ubuntu1_amd64.deb
sudo rm -f libmysqlclient18_5.6.21-1ubuntu12.04_amd64.deb
#removing installation files after installation
 
sudo /etc/init.d/mysql restart
if [ $? != 0 ];then echo "Unable to restart mysql server."; exit 100; fi

exit 0

# Leave the last line empty, otherwise it can cause problems running the script
