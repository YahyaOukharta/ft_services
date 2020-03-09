rc-status
rc-service mariadb restart
rc-status

mysql < create_users.sql -u root -proot
rc-service mariadb stop

mariadbd --user=root