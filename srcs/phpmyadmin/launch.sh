docker rm pma
docker build . -t pma-img 
docker run -it -p 5000:5000 -e DB_HOST=$(minikube ip) --name pma pma-img:latest