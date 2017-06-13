#!/bin/sh

# trial appliaction deployment script

mkdir /tmp/arm-workdir
cd $1
mv trial.war /tmp/arm-workdir/trial.zip
mkdir /tmp/arm-workdir/trial
unzip /tmp/arm-workdir/trial.zip -d /tmp/arm-workdir/trial

mv /tmp/arm-workdir/trial/WebContent/jdbc.properties jdbc.tmp

sed -e s/localhost/$2/g jdbc.tmp > jdbc.tmp1
sed -e s/jdbc.username=root/jdbc.username=$3/g jdbc.tmp1 > jdbc.tmp2
sed -e s/jdbc.password=admin@123/jdbc.password=$4/g jdbc.tmp2 > jdbc.tmp
mv -f jdbc.tmp /tmp/arm-workdir/trial/WebContent/jdbc.properties

#mv -f /tmp/arm-workdir/trial/WEB-INF/jdbc.properties /tmp/arm-workdir/trial/WEB-INF/

rm -f jdbc.tmp*

#mv /tmp/arm-workdir/WEB-INF/lib/mysql-connector-java-5.1.15-bin.jar /tmp/arm-workdir/trial/WEB-INF/lib
cd /tmp/arm-workdir/trial
zip -r /tmp/arm-workdir/trial-updated.zip ./*
mv /tmp/arm-workdir/trial-updated.zip /tmp/arm-workdir/trial.war
sudo mv /tmp/arm-workdir/trial.war $5/webapps

cd $1
#sudo rm -rf /tmp/arm-workdir/
#sudo rm trial.sh
#sudo rm mysqldb_conf_sumit.sh
#sudo rm install*
#sudo rm patil.sql

sudo  sh $5/bin/shutdown.sh
sudo  sh $5/bin/startup.sh
exit 0


