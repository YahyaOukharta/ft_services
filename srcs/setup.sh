# Point docker-cli to docker daemon in minikube
eval $(minikube -p minikube docker-env)

# Enable MetalLB load balancer
minikube addons enable 'metallb'

# Delete existing resources
kubectl delete deployments --all
kubectl delete services --all

# Build images for each application
sh build_imgs.sh

# Apply cluster configuration

    # Create Persistent Volumes Claims for mysql and influxdb  
    kubectl apply -f pvc.yml
    # Create Deployments and Services for each app
    kubectl apply -f deployments.yml
    kubectl apply -f services.yml

# Remove ip from ssh known hosts 
ssh-keygen -R 192.168.99.103
