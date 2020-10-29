FROM alpine

RUN apk add mysql-client

COPY start.sh /start.sh
RUN chmod 777 /start.sh

ENTRYPOINT ["/bin/sh", "/start.sh"]