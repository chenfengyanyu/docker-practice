docker service create --name wordpress -p 80:80 --network=wordpress-net --env 
WORDPRESS_DB_PASSWORD=root --env WORDPRESS_DB_HOST=mysql wordpress


# w9bbkfiwwev25rd26d8u3sui5 
# overall progress: 1 out of 1 tasks 
# 1/1: running [==================================================>] 
# verify: Service converged



#查看进程是否正常

 docker service ps wordpress

#  ID NAME IMAGE NODE DESIRED STATE 
# CURRENT STATE ERROR PORTS 
# sg**5l wordpress.1 wordpress:latest docker-swarm-test01 Running Running 15 
# seconds ago