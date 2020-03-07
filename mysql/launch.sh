docker rm mysql
docker build . -t mysql-img 
docker run -it -p 3306:3306 --name mysql mysql-img:latest