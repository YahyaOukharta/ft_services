docker rm wp
docker build . -t wp-img 
docker run -it -p 5050:5050 -e DB_HOST=$(minikube ip) --name wp wp-img:latest