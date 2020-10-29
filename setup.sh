cd srcs/

#Install brew and docker # 
sh setup_docker.sh

# Setup k8 
sh setup_k8.sh

# Start virtual machine 
minikube start --memory 4000 --driver=virtualbox

# Launch main script
sh setup.sh