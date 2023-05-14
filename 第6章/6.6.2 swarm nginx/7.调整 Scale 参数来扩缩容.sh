 docker service scale swarm-nginx=2


#  swarm-nginx scaled to 2 
# overall progress: 2 out of 2 tasks 
# 1/2: running [==================================================>] 
# 2/2: running [==================================================>] 
# verify: Service converged




#扩容也是非常简单的

 docker service scale swarm-nginx=4

#  swarm-nginx scaled to 4 
# overall progress: 4 out of 4 tasks 
# 1/4: running [==================================================>] 
# 2/4: running [==================================================>] 
# 3/4: running [==================================================>] 
# 4/4: running [==================================================>] 
# verify: Service converged
