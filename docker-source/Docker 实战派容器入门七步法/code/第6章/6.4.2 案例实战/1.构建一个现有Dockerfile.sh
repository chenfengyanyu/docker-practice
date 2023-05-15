docker build -t mweb-img -f ./docker/node.Dockerfile .



# Sending build context to Docker daemon 564.3MB 
# Step 1/7 : FROM harbor.jartto.com/sre/pm2:4.4.0 as pm2 
# ---> df65fe397c4b 
# Step 2/7 : RUN mkdir -p /usr/share/nginx/ssr 
# ---> Using cache 
# ---> b02d2c9cd862 
# Step 3/7 : COPY . /usr/share/nginx/ssr/ 
# ---> 7ac8d1c0aa6c 
# Step 4/7 : WORKDIR /usr/share/nginx/ssr/ 
# ---> Running in ff9e7f4fbc50 
# Removing intermediate container ff9e7f4fbc50 
# ---> 7e0a7ab30f93 
# Step 5/7 : ENV NODE_ENV test 
# ---> Running in 9d39d243976e 
# Removing intermediate container 9d39d243976e 
# ---> d27038f4f30f 
# Step 6/7 : CMD npm run start 
# ---> Running in 65820c6caba3 
# Removing intermediate container 65820c6caba3 
# ---> 23adea36cfea 
# Step 7/7 : EXPOSE 19888 
# ---> Running in 66f8c3bb6d17 
# Removing intermediate container 66f8c3bb6d17 
# ---> c96d6c691633 
# Successfully built c96d6c691633 
# Successfully tagged mweb-img:latest