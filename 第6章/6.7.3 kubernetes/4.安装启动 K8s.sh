#所有节点执行如下命令，并安装 kubelet、kubeadm 以及 kubectl
cat > /etc/yum.repos.d/kubernetes.repo << EOF 
[kubernetes] 
name=Kubernetes 
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/ 
enabled=1 
gpgcheck=1 
repo_gpgcheck=1 
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg 
https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg 
EOF 
yum install kubelet-1.16.9-0 kubeadm-1.16.9-0 kubectl-1.16.9-0 -y 
systemctl enable kubelet.service