FROM alpine

 RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add curl influxdb

COPY start.sh /start.sh
RUN chmod 777 /start.sh

ENTRYPOINT ["/bin/sh", "/start.sh"]