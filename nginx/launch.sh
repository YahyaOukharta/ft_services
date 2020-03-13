docker rm nginx
docker build . -t nginx-img 
docker run -it -p 80:80 --name nginx nginx-img:latest