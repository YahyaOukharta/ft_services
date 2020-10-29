mkdir -p /goinfre/$USER/k8

cd /goinfre/$USER/k8/

if [ ! -f "/goinfre/$USER/k8/minikube" ]
then
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64 \
    && chmod +x minikube;
  curl -LO  https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl \
    && chmod +x kubectl;
fi

#alias kubectl="/goinfre/${USER}/k8/kubectl"
#alias minikube="/goinfre/${USER}/k8/minikube"
#export MINIKUBE_HOME="/goinfre/$USER/k8"