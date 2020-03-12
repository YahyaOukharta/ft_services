docker rm influxdb
docker build . -t influxdb-img 
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -p 8086-8088:8086-8088 --name influxdb influxdb-img:latest