# Build images for each app from local Dockerfiles
docker build nginx/ -t nginx-img
docker build ftps/ -t ftps-img
docker build phpmyadmin/ -t pma-img
docker build wordpress/ -t wp-img
docker build mysql/ -t mysql-img
docker build grafana/ -t grafana-img
docker build influxdb/ -t influxdb-img

# Build images for init containers : wp, pma and grafana containers will have to wait for the databases to be running
docker build mysql/init-db/ -t init-db-img
docker build influxdb/init-influx/ -t init-influx-img
