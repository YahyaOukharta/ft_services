FROM alpine

EXPOSE 8086
EXPOSE 8088

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add openrc influxdb telegraf

ENV TELEGRAF_CONFIG_PATH /etc/telegraf.conf

COPY start.sh /start.sh
RUN chmod 777 /start.sh

#setup openrc
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel

COPY telegraf.conf /etc/telegraf.conf
COPY influxdb.conf /etc/influxdb.conf

RUN rc-update add influxdb

ENTRYPOINT ["/bin/sh", "/start.sh"]