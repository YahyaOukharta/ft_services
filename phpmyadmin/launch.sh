docker rm pma
docker build . -t pma-img 
docker run -it -p 5000:5000 --name pma pma-img:latest