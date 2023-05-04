sudo yum install apt-transport-https ca-certificates curl gnupg lsb-release -y
sudo yum update

### install docker ###
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $USER

### install minikube ####
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube

### install kubectl ###
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

###### start minikube #########
minikube start --driver=docker

###### enable minikube dashboard #######
minikube addons enable dashboard


