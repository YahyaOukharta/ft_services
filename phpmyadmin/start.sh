sh /setup_php.sh

#create pma tables,
while ! mysqladmin ping -h ${DB_HOST} --silent; do
    echo "[!] Waiting for host : ${DB_HOST}"
    sleep 1
done

mysql < /usr/share/webapps/phpmyadmin/sql/create_tables.sql mysql -h ${DB_HOST} -u admin -padmin 
#start services
rc-status
rc-service nginx start
rc-service php-fpm7 start
rc-status

nginx -s stop
nginx -g 'daemon off;'
#exec "/bin/sh"