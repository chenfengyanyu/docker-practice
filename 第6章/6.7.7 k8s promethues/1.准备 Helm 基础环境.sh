wget https://mirrors.huaweicloud.com/helm/v3.2.1/helm-v3.2.1-linux-amd64.tar.gz 
tar xvzf helm-v3.2.1-linux-amd64.tar.gz 
cp -av linux-adm64/helm /usr/local/bin/

#验证是否安装成功
helm version

# version.BuildInfo{Version:"v3.2.1", GitCommit:"fe51cd1e31e6a202cba7dead9552a6d418ded79a", 
# GitTreeState:"clean", GoVersion:"go1.13.10"}