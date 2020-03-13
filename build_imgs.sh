docker build nginx/ -t nginx-img

docker build phpmyadmin/ -t pma-img
docker build wordpress/ -t wp-img
docker build mysql/ -t mysql-img
docker build grafana/ -t grafana-img
docker build influxdb/ -t influxdb-img

docker build mysql/init-db/ -t init-db-img
docker build influxdb/init-influx/ -t init-influx-img
