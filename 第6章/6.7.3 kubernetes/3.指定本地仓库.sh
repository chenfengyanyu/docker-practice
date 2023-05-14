#打开文件“daemon.json”并添加如下内容 
 cat > /etc/docker/daemon.json << EOF 
{ 
 "insecure-registries":["harbor."], 
 "registry-mirrors": ["https://registry.docker-cn.com", "https://q57n2a84.mirror.aliyuncs.com", 
"https://docker.mirrors.ustc.edu.cn"] 
} 
EOF

