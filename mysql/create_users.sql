CREATE DATABASE phpmyadmin;
CREATE DATABASE wordpress;

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'pma'@'%' IDENTIFIED BY 'pmapass';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_admin'@'%' IDENTIFIED BY 'wp_admin';
FLUSH PRIVILEGES;