FROM alpine

EXPOSE 3000

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add openrc vim grafana

COPY start.sh /start.sh
RUN chmod 777 /start.sh

#setup openrc
RUN mkdir -p  /run/openrc/
RUN touch /run/openrc/softlevel

WORKDIR /usr/share/grafana


ENTRYPOINT ["grafana-server", "--config=/etc/grafana.ini"]