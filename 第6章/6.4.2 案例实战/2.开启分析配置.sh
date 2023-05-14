export DOCKER_BUILDKIT=1 
docker build -t mweb-img -f ./docker/node.Dockerfile --progress plain .


# 1 [internal] load .dockerignore 
# 1 transferring context: 2B 0.0s done 
# 1 DONE 0.1s
#2 [internal] load build definition from node.Dockerfile 
#2 transferring dockerfile: 522B 0.0s done 
#2 DONE 0.1s 
#3 [internal] load metadata for harbor.baijiahulian.com/sre/pm2:4.4.0 
#3 DONE 0.0s 
#4 [1/4] FROM harbor.baijiahulian.com/sre/pm2:4.4.0 
#4 resolve harbor.baijiahulian.com/sre/pm2:4.4.0 done 
#4 DONE 0.0s 
#6 [internal] load build context 
#6 transferring context: 7.55MB 5.0s 
#6 ...
#5 [2/4] RUN mkdir -p /usr/share/nginx/ssr 
#5 DONE 6.3s 
#6 [internal] load build context 
#6 transferring context: 67.36MB 10.1s 
#6 transferring context: 136.42MB 15.2s 
#6 transferring context: 166.84MB 20.2s 
#6 transferring context: 224.61MB 25.3s 
#6 transferring context: 280.34MB 30.3s 
#6 transferring context: 325.58MB 35.3s 
#6 transferring context: 385.17MB 40.4s 
#6 transferring context: 450.84MB 45.5s 
#6 transferring context: 503.23MB 48.9s done 
#6 DONE 49.3s 
#7 [3/4] COPY . /usr/share/nginx/ssr/
#7 DONE 52.0s 
#8 [4/4] WORKDIR /usr/share/nginx/ssr/ 
#8 DONE 0.0s 
#9 exporting to image 
#9 exporting layers 
#9 exporting layers 47.0s done 
#9 writing image sha256:f734***80df done 
#9 naming to docker.io/library/mweb-img done 
#9 DONE 47.1s