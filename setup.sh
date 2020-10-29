cd srcs/

# Setup k8 
sh setup_k8.sh

# Start virtual machine 
minikube start --memory 4000 --driver=virtualbox

# Launch main script
sh setup.sh