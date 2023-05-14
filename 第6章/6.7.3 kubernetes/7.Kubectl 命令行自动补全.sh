 #1.Linux 中安装 “bash-completion”
 yum install bash-completion* -y

 echo "source <(kubectl completion bash)" >> ~/.bashrc 
 source /etc/profile && source ~/.bashrc


#2. 修改并执行“flannel.sh”脚本文件
sh flannel.sh 

#下载kube-flannel.yml
wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

#如果下载异常 可尝试向/etc/hosts 对应ip
echo "199.232.68.133 raw.githubusercontent.com" >> /etc/hosts


#3.应用到配置当中
 kubectl apply -f kube-flannel.yml

