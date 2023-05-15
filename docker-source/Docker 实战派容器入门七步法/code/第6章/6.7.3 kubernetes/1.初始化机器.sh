# 1.每一台机器都执行
swapoff -a && sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab 
setenforce 0 && sed -i 's/^SELINUX=.*/SELINUX=disabled/' /etc/selinux/config 
echo "10.253.1.55 k8s-master" >> /etc/hosts 
echo "10.253.1.56 k8s-worker01" >> /etc/hosts



# 2.设置hostname
#在master机器上设置
hostnamectl set-hostname k8s-master
#在worker节点设置
hostnamectl set-hostname k8s-worker01

