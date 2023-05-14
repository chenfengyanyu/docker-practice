#1.直接修改 yaml 文件的 images 字段重新 apply 即可
#nginx-deployment.yaml

apiVersion: apps/v1 
kind: Deployment 
metadata:
 name: nginx-deployment 
spec: 
 selector: 
 matchLabels: 
 app: nginx 
 replicas: 4 
 template: 
 metadata: 
 labels: 
 app: nginx 
 spec: 
 containers: 
 - name: nginx 
 image: nginx:1.16.1
 ports: 
 - containerPort: 80


#2.应用配置
kubectl apply -f nginx-deployment.yaml


#3.查看 pod 情况 正常运行，没有任何影响
 kubectl get pods -l app=nginx


#  NAME READY STATUS RESTARTS AGE 
# nginx-deployment-5d66cc795f-497m6 1/1 Running 0 20s 
# nginx-deployment-5d66cc795f-67pmj 1/1 Running 0 66s 
# nginx-deployment-5d66cc795f-6drwk 1/1 Running 0 19s 
# nginx-deployment-5d66cc795f-p2qdj 1/1 Running 0 66s