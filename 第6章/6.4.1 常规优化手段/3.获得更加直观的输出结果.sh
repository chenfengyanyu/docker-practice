docker build -t test-image-1 -f Dockerfile --progress plain .


#1 [internal] load build definition from Dockerfile 
#1 sha256:a6ff***f640 
#1 transferring dockerfile: 36B 0.0s done 
#1 DONE 0.0s 
#2 [internal] load .dockerignore 
#2 sha256:dd37***2f7c 
#2 transferring context: 2B done 
#2 DONE 0.0s
#3 [internal] load metadata for docker.io/library/nginx:latest 
#3 sha256:06c4***e6bc 
#3 DONE 0.0s 
#4 [1/3] FROM docker.io/library/nginx 
#4 sha256:6254***518b 
#4 DONE 0.0s 
#5 [internal] load build context 
#5 sha256:292b***e418 
#5 transferring context: 1.19kB done 
#5 DONE 0.1s 
#6 [2/3] COPY build/ /usr/share/nginx/html/ 
#6 sha256:c9d0***3fd9 
#6 CACHED 
#7 [3/3] COPY default.conf /etc/nginx/conf.d/default.conf 
#7 sha256:2948***fb18 
#7 CACHED 
#8 exporting to image 
#8 sha256:e8c6***ab00 
#8 exporting layers done 
#8 writing image sha256:9b91***4a29 0.0s done 
#8 naming to docker.io/library/test-image-1 done 
#8 DONE 0.0s