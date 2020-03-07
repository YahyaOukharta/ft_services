docker rm wp
docker build . -t wp-img 
docker run -it -p 5050:5050 --name wp wp-img:latest