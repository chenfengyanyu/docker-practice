# 删除本地一个或多少镜像
docker rmi $(sudo docker images --filter dangling=true -q)

#如果终端报错，此时需要先停止并删除
sudo docker ps -a | grep "Exited" | awk '{print $1 }'|xargs sudo docker stop
sudo docker ps -a | grep "Exited" | awk '{print $1 }'|xargs sudo docker rm
sudo docker images | grep none|awk '{print $3 }'|xargs sudo docker rmi