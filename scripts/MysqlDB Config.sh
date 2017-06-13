#!/bin/sh

# cloudteam Db creation script

MyUSER="$1"
#$1=dbUsername
MyPASS="$2"
#$2=MySQLpassword;dbPassword

sudo mysqladmin -u root password $MyPASS
#assigning password to root user

C1="CREATE DATABASE IF NOT EXISTS cloudteam;"
C2="USE cloudteam;"
C3="GRANT ALL PRIVILEGES ON *.*  TO '$MyUSER'@'%' IDENTIFIED BY '$MyPASS' WITH GRANT OPTION;"
C4="FLUSH PRIVILEGES;"
SQL="${C1}${C2}${C3}${C4}"

sudo mysql -h localhost "--user=$MyUSER" "--password=$MyPASS" -Bse "$SQL"
#creates a database and grants all the privilegs to dbUser
cd $3
sudo mysql -u $MyUSER -p$MyPASS cloudteam < cloudteam.sql

exit 0

