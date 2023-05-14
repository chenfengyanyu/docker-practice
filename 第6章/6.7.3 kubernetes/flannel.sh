# vi flannel.sh 
#!/bin/bash 
set -e 
FLANNEL_VERSION=v0.11.0 
QUAY_URL=quay.io/coreos 
QINIU_URL=quay.mirrors.ustc.edu.cn/coreos 
images=(flannel:${FLANNEL_VERSION}-amd64 
flannel:${FLANNEL_VERSION}-arm64 
flannel:${FLANNEL_VERSION}-arm 
flannel:${FLANNEL_VERSION}-ppc64le 
flannel:${FLANNEL_VERSION}-s390x) 
for imageName in ${images[@]} ; do 
 docker pull $QINIU_URL/$imageName 
 docker tag $QINIU_URL/$imageName $QUAY_URL/$imageName 
 docker rmi $QINIU_URL/$imageName 
done