cd srcs/
source bash_profile

#Install brew and docker # 
sh setup_docker.sh

# Setup k8 
sh setup_k8.sh

# Start virtual machine 
if command -v virtualBox &> /dev/null
then 
    minikube start --memory 4000 --driver=virtualbox; 
else 
    echo "[!] Install VirtualBox !";
    exit 1;
fi

# Launch main script
sh setup.sh