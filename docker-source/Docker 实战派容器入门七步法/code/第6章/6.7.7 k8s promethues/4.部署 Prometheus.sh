#1.通过 Helm 进行安装
 helm install promethues-step7 aliyuncs/prometheus-operator -n monitor

#  NAME: promethues-step7 
# LAST DEPLOYED: Fri Jun 4 22:48:16 2021 
# NAMESPACE: monitor 
# STATUS: deployed 
# REVISION: 1 
# NOTES: 
# The Prometheus Operator has been installed. Check its status by running: 
#  kubectl --namespace monitor get pods -l "release=promethues-step7"
#  Visit https://github.com/coreos/prometheus-operator for instructions on how 
# to create & configure Alertmanager and Prometheus instances using the Operator.



#2.通过 Kubectl 获取 Pods 信息
kubectl --namespace monitor get pods -l "release=promethues-step7"

# NAME READY STATUS RESTARTS AGE 
# promethues-step7-grafana-7f96c778cf-lbwtl 2/2 Running 0 2m46s 
# promethues-step7-prometheu-operator-dcd8cb97b-zlvc8 2/2 Running 0 2m46s 
# promethues-step7-prometheus-node-exporter-jn8fp 1/1 Running 0 2m46s 
# promethues-step7-prometheus-node-exporter-x5tzp 1/1 Running 0 2m46s