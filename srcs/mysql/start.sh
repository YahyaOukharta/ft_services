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

if  mysql -u root -proot -e "select count(*) from information_schema.tables where table_schema='wordpress' and table_name='wp_users';" | grep "0";
then
    mysql < install_wp.sql -u root -proot
fi

rc-service mariadb stop
mariadbd --user=root 