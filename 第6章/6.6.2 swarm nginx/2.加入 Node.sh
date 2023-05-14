docker swarm join --token SWMTKN-1-3yyq***kqw6 10.255.3.71:2377

# This node joined a swarm as a worker.



# 续升降级成为 Node 或者 Manager
docker node demote node02 
docker node promote node02 


# 列出 Node 列表信息
docker node ls


# ID HOSTNAME STATUS AVAILABILITY MANAGER 
# STATUS ENGINE VERSION 
# Ok**4t * docker-swarm-test01 Ready Active Leader 20.10.6 
# n0**m0 docker-swarm-test02 Ready Active 20.10.6 
# do**rw docker-swarm-test03 Ready Active 20.10.6 
# # docker node promote docker-swarm-test02 
# Node docker-swarm-test02 promoted to a manager in the swarm.




docker node ls 
# ID HOSTNAME STATUS AVAILABILITY MANAGER 
# STATUS ENGINE VERSION 
# Ok**4t * docker-swarm-test01 Ready Active Leader 20.10.6 
# n0**m0 docker-swarm-test02 Ready Active Reachable 20.10.6 
# do**rw docker-swarm-test03 Ready Active 20.10.6 


docker node demote docker-swarm-test02 
# Manager docker-swarm-test02 demoted in the swarm. 
docker node ls 
# ID HOSTNAME STATUS AVAILABILITY MANAGER 
# STATUS ENGINE VERSION 
# Ok**4t * docker-swarm-test01 Ready Active Leader 20.10.6 
# n0**m0 docker-swarm-test02 Ready Active 20.10.6 
# do**rw docker-swarm-test03 Ready Active 20.10.6