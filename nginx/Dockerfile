FROM alpine

EXPOSE 80 443

RUN apk add openrc nginx vim 



COPY start.sh /start.sh
RUN chmod 777 /start.sh

#setup openrc
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel

#RUN cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.old

COPY default.conf /etc/nginx/conf.d/default.conf


ENTRYPOINT ["/bin/sh" , "/start.sh"]