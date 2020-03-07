sh /setup_php.sh

#create pma tables,
mysql < /usr/share/webapps/phpmyadmin/sql/create_tables.sql mysql -h 192.168.99.101 -u admin -padmin 

#start services
rc-status
rc-service nginx start
rc-service php-fpm7 start
rc-status


exec "/bin/sh"