wget  https://[githubusercontent地址]/kubernetes/ingress-nginx/nginx-0.18.0/deploy/ mandatory.yaml
#修改暴露服务的方式——使用LoadBalancer
  annotations:
    service.beta.kubernetes.io/alicloud-loadbalancer-address-type: intranet
service.beta.kubernetes.io/alicloud-loadbalancer-force-override-listeners: "true"
    service.beta.kubernetes.io/alicloud-loadbalancer-id: lb-xxxxxxxxxx
kubectl apply -f ./mandatory.yaml
