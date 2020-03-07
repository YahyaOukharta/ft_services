docker rm influxdb
docker build . -t influxdb-img 
docker run -it -p 8086:8086 --name influxdb influxdb-img:latest