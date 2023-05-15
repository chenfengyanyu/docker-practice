kubeadm init --apiserver-advertise-address $(hostname -I | cut -d ' ' -f 1) --pod-network-cidr 
10.244.0.0/16 --kubernetes-version v1.16.9 #master 节点执行
mkdir -p $HOME/.kube 
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config 
chown $(id -u):$(id -g) $HOME/.kube/config