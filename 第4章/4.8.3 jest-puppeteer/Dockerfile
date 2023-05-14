FROM node:14-alpine3.14 
# 设置工作目录
WORKDIR /usr/app 
# 复制 package* package-lock.json 
COPY ./package*.json ./ 
# 安装依赖
RUN npm install --production 
# 复制文件
COPY ./ ./ 
# 构建应用
RUN npm run test 
# Expose the listening port 
EXPOSE 8888 
CMD ["node", "server.js"]