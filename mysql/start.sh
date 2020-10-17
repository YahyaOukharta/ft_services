#exec "cat"

#mkdir -p  /run/openrc/
touch /run/openrc/softlevel
chmod -R 777 /var/lib/mysql
export mysqldata=/var/lib/mysql/mysql
if [ ! -d $mysqldata ]
then
 /etc/init.d/mariadb setup
fi

rc-update add mariadb

rc-status
rc-service mariadb restart
rc-status

mysql < create_users.sql -u root -proot
rc-service mariadb stop



mariadbd --user=root 