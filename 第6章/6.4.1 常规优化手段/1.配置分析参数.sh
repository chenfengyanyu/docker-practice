#镜像构建过程分析
docker build -t test-image-1 -f Dockerfile .



# [+] Building 0.7s (8/8) FINISHED 
#  => [internal] load build definition from Dockerfile 0.1s 
#  => => transferring dockerfile: 137B 0.0s 
#  => [internal] load .dockerignore 0.0s 
#  => => transferring context: 2B 0.0s 
#  => [internal] load metadata for docker.io/library/nginx:latest 0.0s 
#  => [1/3] FROM docker.io/library/nginx 0.0s 
#  => [internal] load build context 0.1s 
#  => => transferring context: 1.19kB 0.1s 
#  => CACHED [2/3] COPY build/ /usr/share/nginx/html/ 0.0s 
#  => CACHED [3/3] COPY default.conf /etc/nginx/conf.d/default.conf 0.0s 
#  => exporting to image 0.1s 
#  => => exporting layers 0.0s 
#  => => writing image sha256:9b91***4a29 0.0s 
#  => => naming to docker.io/library/test-image-1 0.0s