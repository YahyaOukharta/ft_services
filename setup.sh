
kubectl delete deployments --all
kubectl delete pods --all
kubectl delete services --all

#sh build_imgs.sh

kubectl apply -f deployments.yml
kubectl apply -f services.yml
