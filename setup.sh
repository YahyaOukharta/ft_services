



kubectl delete deployments --all
kubectl delete pods --all
kubectl delete services --all
kubectl delete pv --all
kubectl delete pvc --all

sh build_imgs.sh
minikube addons enable 'metallb'


kubectl apply -f pvc.yml

kubectl apply -f deployments.yml
kubectl apply -f services.yml