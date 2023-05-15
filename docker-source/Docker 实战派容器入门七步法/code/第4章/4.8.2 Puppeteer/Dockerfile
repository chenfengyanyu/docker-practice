FROM node:alpine 
# 设置工作目录
WORKDIR /usr/app 
# 全局安装
RUN npm install --global pm2 
# 复制 package* package-lock.json 
COPY ./package*.json ./ 
# 安装依赖
RUN npm install --production 
# 复制文件
COPY ./ ./ 
# 构建应用
RUN npm run build 
# Expose the listening port 
EXPOSE 3000 
# 设置用户
USER node 
# 启动命令
CMD [ "pm2-runtime", "start", "npm", "--", "start" ]