 vim nginx-deployment.yaml


 #创建和修改后 应用这个配置
  kubectl apply -f nginx-deployment.yaml

#输出这个信息
 kubectl describe deployment nginx-deployment


#  Name: nginx-deployment 
# Namespace: default 
# CreationTimestamp: Fri, 04 Jun 2021 22:08:51 +0800 
# Labels: <none> 
# Annotations: deployment.kubernetes.io/revision: 1 
#  kubectl.kubernetes.io/last-applied-configuration: 
#  {"apiVersion":"apps/v1","kind":"Deployment","metadata": 
# {"annotations":{},"name":"nginx-deployment","namespace":"default"},"spec":{"replica... 
# Selector: app=nginx 
# Replicas: 2 desired | 2 updated | 2 total | 1 available | 1 unavailable 
# StrategyType: RollingUpdate 
# MinReadySeconds: 0 
# RollingUpdateStrategy: 25% max unavailable, 25% max surge 
# Pod Template: 
#  Labels: app=nginx 
#  Containers: 
#  nginx: 
#  Image: nginx:1.14.2 
#  Port: 80/TCP 
#  Host Port: 0/TCP 
#  Environment: <none> 
#  Mounts: <none> 
#  Volumes: <none> 
# Conditions: 
#  Type Status Reason 
#  ---- ------ ------ 
#  Available False MinimumReplicasUnavailable
#   Progressing True ReplicaSetUpdated 
# OldReplicaSets: <none> 
# NewReplicaSet: nginx-deployment-574b87c764 (2/2 replicas created) 
# Events: 
#  Type Reason Age From Message 
#  ---- ------ ---- ---- ------- 
#  Normal ScalingReplicaSet 15s deployment-controller Scaled up replica set 
# nginx-deployment-574b87c764 to 2


#查看创建出的 Pods 信息
 kubectl get pods -l app=nginx

#  NAME READY STATUS RESTARTS AGE 
# nginx-deployment-574b87c764-t8nhw 1/1 Running 0 88s 
# nginx-deployment-574b87c764-vqj7q 1/1 Running 0 88s


#更新 Deployment 文件
 vim nginx-deployment.yaml


#应用配置文件
kubectl apply -f nginx-deployment.yaml


#获取 Pods 信息
kubectl get pods -l app=nginx
NAME READY STATUS RESTARTS AGE 
nginx-deployment-574b87c764-b5nm6 1/1 Running 0 19s 
nginx-deployment-574b87c764-t8nhw 1/1 Running 0 5m2s 
nginx-deployment-574b87c764-vqj7q 1/1 Running 0 5m2s 
nginx-deployment-574b87c764-w7nm5 1/1 Running 0 19s