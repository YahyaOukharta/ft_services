FROM alpine

EXPOSE 20
EXPOSE 21

RUN apk add vsftpd openssl openrc lftp vim

COPY start.sh /start.sh
RUN chmod 777 /start.sh

#create user
RUN adduser -D admin
RUN echo "admin:admin" | chpasswd
#root folder for user admin
RUN mkdir -p /var/ftp  

#setup vsftpd
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel
RUN rc-update add vsftpd

RUN cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.default
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY vsftpd.chroot_list /etc/vsftpd.chroot_list

#copy ssl
COPY ssl/cert.pem /etc/ssl/certs/cert.pem
COPY ssl/cert.key /etc/ssl/private/cert.key
ENTRYPOINT ["/bin/sh" ,"/start.sh"]
