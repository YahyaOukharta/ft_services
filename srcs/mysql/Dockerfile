FROM alpine

EXPOSE 3306

RUN apk add mysql openrc mysql-client vim

COPY start.sh /start.sh
RUN chmod 777 /start.sh

RUN mkdir -p  /run/openrc/

COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY create_users.sql /create_users.sql
COPY install_wp.sql /install_wp.sql

ENTRYPOINT ["/bin/sh","/start.sh"]