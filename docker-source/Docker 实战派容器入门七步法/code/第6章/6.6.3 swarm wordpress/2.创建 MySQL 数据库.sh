 docker service create --name mysql --env MYSQL_ROOT_PASSWORD=root --env MYSQLDATABASE=wordpress 
--network=wordpress-net --mount type=volume,source=mysql-data,destination=/var/lib/mysql 
mysql:5.7


# w1q9yyjdfgfi6yn8d7yyk0bva 
# overall progress: 1 out of 1 tasks 
# 1/1: running [==================================================>] 
# verify: Service converged


#查看 mysql 进程
docker service ps mysql 
# ID NAME IMAGE NODE DESIRED STATE CURRENT STATE 
# ERROR PORTS 
# xt**n1 mysql.1 mysql:5.7 docker-swarm-test02 Running Running 43 seconds ago