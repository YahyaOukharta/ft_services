rc-status
rc-service vsftpd restart
rc-status

#sed -i "s|pasv_address=-|pasv_address=${minikube ip}|g" /etc/vsftpd/vsftpd.conf


vsftpd 

