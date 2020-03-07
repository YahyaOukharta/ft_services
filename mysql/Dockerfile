FROM alpine

EXPOSE 3306

RUN apk add mysql openrc mysql-client vim


COPY start.sh /start.sh
RUN chmod 777 /start.sh

#setup mysql
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
RUN rc-update add mariadb

COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY create_users.sql /create_users.sql

ENTRYPOINT ["/bin/sh","/start.sh"]