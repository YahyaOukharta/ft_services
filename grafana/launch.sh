docker rm grafana
docker build . -t grafana-img 
docker run -it -p 3000:3000 --name grafana grafana-img:latest