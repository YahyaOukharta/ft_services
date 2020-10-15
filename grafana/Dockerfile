FROM alpine

EXPOSE 3000

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add openrc vim grafana

COPY start.sh /start.sh
RUN chmod 777 /start.sh

#setup openrc
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel

COPY influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/influxdb.yaml
COPY dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/dashboards.yaml

ADD dashboards/ /var/lib/grafana/dashboards/

COPY grafana.ini /etc/grafana.ini

ENTRYPOINT ["/bin/sh", "/start.sh"]