#修改配置
kubectl scale deployment/nginx-deployment --replicas=3

#应用配置
kubectl get pods -l app=nginx

# NAME READY STATUS RESTARTS AGE 
# nginx-deployment-574b87c764-b5nm6 1/1 Running 0 109s 
# nginx-deployment-574b87c764-t8nhw 1/1 Running 0 6m32s 
# nginx-deployment-574b87c764-vqj7q 1/1 Running 0 6m32s