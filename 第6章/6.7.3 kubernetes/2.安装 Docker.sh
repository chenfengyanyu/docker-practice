yum install -y yum-utils device-mapper-persistent-data lvm2 
yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo 
yum -y install docker-ce 
yum makecache fast 
service docker start