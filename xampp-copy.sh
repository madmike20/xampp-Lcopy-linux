#!/bin/bash


#Step (1): Unzip the tar gz file into the opt directory 
tar -xvf /root/lampp.tar.gz /opt/

#Step (2): Permit the access to this folder and files 
chmod 777 -R /opt/lampp
chmod -v 0555 /opt/lampp/phpmyadmin/config.inc.php
#You need to run a new user to run the sql instance
adduser mysql
chmod 644 /opt/lampp/etc/my.cnf

#Step (3): For auto-starting xampp
cp /opt/lampp/lampp /etc/init.d
#change "#chkconfig 345 95 05" to "#chkconfig 2345 80  30" in gedit
gedit /etc/init.d/lampp 
chkconfig --add lampp
/opt/lampp/lampp restart
